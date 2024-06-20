import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(
        chatWithName: GoRouterState.of(context).extra! as String,
      ),
      body: ChatBody(),
    );
  }
}
