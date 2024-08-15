import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/chat/presentation/manager/chat_cubit/chat_cubit.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
    required this.recieverName,
    required this.recieverId,
    required this.senderId,
  });
  final String recieverName;
  final int recieverId;
  final int senderId;

  @override
  Widget build(BuildContext context) {
    context.read<ChatCubit>().senderId = senderId;
    return BlocListener<ChatCubit, ChatState>(
      listenWhen: (previous, current) {
        return context
                .read<ChatCubit>()
                .listenConnectToChatSocketWhen(previous, current) ||
            context
                .read<ChatCubit>()
                .listenDisconnectFromChatSocketWhen(previous, current);
      },
      listener: (context, state) {
        context.read<ChatCubit>().listenConnectToChatSocket(context, state);
        context.read<ChatCubit>().listenDisconnectFromChatSocket(context, state);
      },
      child: Scaffold(
        appBar: ChatAppBar(
          chatWithName: recieverName,
        ),
        body: ChatBody(
          recieverId: recieverId,
          senderId: senderId,
        ),
      ),
    );
  }
}
