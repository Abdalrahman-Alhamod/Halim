import 'package:flutter/material.dart';
import '../../../data/models/chat_message_model.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class RecieveChatBox extends StatelessWidget {
  const RecieveChatBox({
    super.key,
    required this.message,
  });
  final ChatMessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          context.isEnglish ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade200,
            borderRadius: BorderRadius.only(
              topRight:
                  context.isEnglish ? Radius.zero : const Radius.circular(16),
              topLeft:
                  context.isEnglish ? const Radius.circular(16) : Radius.zero,
              bottomRight: const Radius.circular(16),
              bottomLeft: const Radius.circular(16),
            )),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              child: Text(
                message.content ?? '',
                style: const TextStyle(),
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
                color: context.isDarkMode
                    ? Colors.grey.shade300
                    : Colors.grey.shade500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
