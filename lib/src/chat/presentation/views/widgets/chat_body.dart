import 'package:flutter/material.dart';
import 'package:halim/core/constants/app_sizes.dart';
import 'package:halim/src/chat/presentation/views/widgets/chat_text_field.dart';
import 'package:halim/src/chat/presentation/views/widgets/send_chat_box.dart';

import '../../../domain/entities/message.dart';
import 'recieve_chat_box.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({
    super.key,
  });

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> with WidgetsBindingObserver {
  late final ScrollController _scrollController;
  late final String _email;
  late final List<Message> _messagesList;
  @override
  void initState() {
    _scrollController = ScrollController();
    WidgetsBinding.instance.addObserver(this);
    _email = 'abd@gmail.com';
    _messagesList = [
      Message(
        email: 'abd@gmail.com',
        content: 'Hey Alaa, how are you?',
        time: DateTime.now().subtract(Duration(minutes: 15)),
      ),
      Message(
        email: 'alaa@gmail.com',
        content: 'I\'m good, Abd. How about you?',
        time: DateTime.now().subtract(Duration(minutes: 14)),
      ),
      Message(
        email: 'abd@gmail.com',
        content: 'Doing well, just working on a project.',
        time: DateTime.now().subtract(Duration(minutes: 13)),
      ),
      Message(
        email: 'alaa@gmail.com',
        content: 'That sounds interesting. What project is it?',
        time: DateTime.now().subtract(Duration(minutes: 12)),
      ),
      Message(
        email: 'abd@gmail.com',
        content: 'It\'s a chat application. Trying to improve its UI.',
        time: DateTime.now().subtract(Duration(minutes: 11)),
      ),
      Message(
        email: 'alaa@gmail.com',
        content: 'Nice! Need any help?',
        time: DateTime.now().subtract(Duration(minutes: 10)),
      ),
      Message(
        email: 'abd@gmail.com',
        content: 'Sure, some feedback would be great.',
        time: DateTime.now().subtract(Duration(minutes: 9)),
      ),
      Message(
        email: 'alaa@gmail.com',
        content: 'Alright, send me the details.',
        time: DateTime.now().subtract(Duration(minutes: 8)),
      ),
      Message(
        email: 'abd@gmail.com',
        content: 'Just emailed you the project specs.',
        time: DateTime.now().subtract(Duration(minutes: 7)),
      ),
      Message(
        email: 'alaa@gmail.com',
        content: 'Got it. I\'ll take a look and get back to you.',
        time: DateTime.now().subtract(Duration(minutes: 6)),
      ),
      Message(
        email: 'abd@gmail.com',
        content: 'Thanks, Alaa! Appreciate it.',
        time: DateTime.now().subtract(Duration(minutes: 5)),
      ),
      Message(
        email: 'alaa@gmail.com',
        content: 'No problem! Talk to you soon.',
        time: DateTime.now().subtract(Duration(minutes: 4)),
      ),
    ];
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
    super.initState();
  }

  void _scrollToBottomWithAnimation() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
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
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: _messagesList.length,
            itemBuilder: (context, index) {
              return _messagesList[index].email == _email
                  ? SendChatBox(message: _messagesList[index])
                  : RecieveChatBox(message: _messagesList[index]);
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.pad16,
            vertical: AppSizes.pad12,
          ),
          child: ChatTextField(
            onSendPressed: (message) {
              setState(() {
                _messagesList.add(
                  Message(
                    email: _email,
                    content: message,
                    time: DateTime.now(),
                  ),
                );
              });
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _scrollToBottomWithAnimation();
              });
            },
          ),
        ),
      ],
    );
  }
}
