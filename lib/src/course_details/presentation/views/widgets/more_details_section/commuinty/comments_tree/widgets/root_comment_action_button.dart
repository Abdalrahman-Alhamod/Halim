
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../core/translations/locale_keys.g.dart';

class RootCommentActionButton extends StatelessWidget {
  const RootCommentActionButton({
    super.key,
    required this.onReplyPressed,
  });

  final void Function()? onReplyPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        TextButton(
          onPressed: onReplyPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            LocaleKeys.CourseDetails_Community_reply.tr(),
          ),
        ),
      ],
    );
  }
}
