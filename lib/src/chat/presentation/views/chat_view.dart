import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(
        chatWithName: LocaleKeys.CourseDetails_Test_Reviews_Names_alaa.tr(),
      ),
      body: ChatBody(),
    );
  }
}
