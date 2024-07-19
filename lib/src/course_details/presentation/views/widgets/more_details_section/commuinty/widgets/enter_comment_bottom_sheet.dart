import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';
import 'comment_text_field.dart';

class EnterCommentBottomSheet extends StatelessWidget {
  const EnterCommentBottomSheet(
      {super.key, this.replyOnUsername, required this.onSend});
  final String? replyOnUsername;
  final void Function(String comment) onSend;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color: context.isDarkMode
                ? Colors.grey.shade800
                : Colors.grey.shade300,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              replyOnUsername != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '${LocaleKeys.CourseDetails_Community_replyingOn.tr()} ',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Text(
                            replyOnUsername!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              CommentTextField(
                onSendPressed: onSend,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
