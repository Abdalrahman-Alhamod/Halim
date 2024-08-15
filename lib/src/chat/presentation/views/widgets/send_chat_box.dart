import 'package:flutter/material.dart';
import 'package:halim/src/chat/data/models/chat_message_model.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class SendChatBox extends StatelessWidget {
  const SendChatBox({
    super.key,
    required this.message,
  });
  final ChatMessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          context.isEnglish ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft:
                context.isEnglish ? Radius.zero : const Radius.circular(16),
            topRight:
                context.isEnglish ? const Radius.circular(16) : Radius.zero,
            bottomRight: const Radius.circular(16),
            bottomLeft: const Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              child: Text(
                message.text ?? '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              TimeOfDay.fromDateTime(message.createdAt ?? DateTime.now())
                  .format(context),
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey.shade300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
