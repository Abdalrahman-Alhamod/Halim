import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/chat/data/models/chat_message_model.dart';
import 'package:halim/src/chat/presentation/manager/chat_cubit/chat_cubit.dart';
import '../../../../../core/constants/app_sizes.dart';
import 'chat_text_field.dart';
import 'send_chat_box.dart';

import 'recieve_chat_box.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({
    super.key,
    required this.recieverId,
    required this.senderId,
  });
  final int recieverId;
  final int senderId;
  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> with WidgetsBindingObserver {
  late final ScrollController _scrollController;
  // ignore: prefer_final_fields
  List<ChatMessageModel> _messages = [];
  @override
  void initState() {
    _scrollController = ScrollController();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
    context.read<ChatCubit>().connectToChatWebsocket();
    context.read<ChatCubit>().getMessages();
    super.initState();
  }

  void _scrollToBottomWithAnimation() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(
        _scrollController.position.maxScrollExtent,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    // ignore: deprecated_member_use
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    if (bottomInset > 0.0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToBottom();
      });
    }
    super.didChangeMetrics();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatCubit, ChatState>(
      listenWhen: context.read<ChatCubit>().listenRecievedChatMessagesWhen,
      listener: (context, state) {
        context.read<ChatCubit>().listenRecievedChatMessages(context, state);
        state.whenOrNull(
          messageReceivedSuccess: (message) {
            setState(() {
              _messages.add(message);
            });
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scrollToBottomWithAnimation();
            });
          },
        );
      },
      child: Column(
        children: [
          Expanded(
            child: BlocConsumer<ChatCubit, ChatState>(
              buildWhen: context.read<ChatCubit>().buildFetchedMessagesWhen,
              listenWhen: context.read<ChatCubit>().listenFetchedMessagesWhen,
              listener: (context, state) {
                context.read<ChatCubit>().listenFetchedMessages(context, state);
                state.whenOrNull(
                  fetchMessagesSuccess: (messages) {
                    _messages.addAll(messages);
                  },
                );
              },
              builder: (context, state) {
                return context.read<ChatCubit>().buildFetchedMessages(
                      context: context,
                      state: state,
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: _messages.length,
                        itemBuilder: (context, index) {
                          return _messages[index].sender == widget.senderId
                              ? SendChatBox(message: _messages[index])
                              : _messages[index].sender == widget.recieverId
                                  ? RecieveChatBox(message: _messages[index])
                                  : const SizedBox();
                        },
                      ),
                    );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.pad16,
              vertical: AppSizes.pad12,
            ),
            child: BlocListener<ChatCubit, ChatState>(
              listenWhen: context.read<ChatCubit>().listenSendMessageWhen,
              listener: (context, state) {
                context.read<ChatCubit>().listenSendMessage(context, state);
                state.whenOrNull(
                  sendMessageSuccess: (message) {
                    setState(() {
                      _messages.removeWhere((model) {
                        return model.id == '-1';
                      });
                      _messages.add(message);
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _scrollToBottomWithAnimation();
                    });
                  },
                  sendMessageLoading: () {
                    setState(() {
                      _messages.add(
                        ChatMessageModel(
                          sender: widget.senderId,
                          createdAt: DateTime.now(),
                          text: ' . . . ',
                          id: '-1',
                        ),
                      );
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _scrollToBottomWithAnimation();
                    });
                  },
                  sendMessageFailure: (networkException) {
                    setState(() {
                      _messages.removeWhere((model) {
                        return model.id == '-1';
                      });
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _scrollToBottomWithAnimation();
                    });
                  },
                );
              },
              child: ChatTextField(
                onSendPressed: (message) {
                  context.read<ChatCubit>().sendMessage(
                        recieverId: widget.recieverId,
                        message: message,
                      );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
