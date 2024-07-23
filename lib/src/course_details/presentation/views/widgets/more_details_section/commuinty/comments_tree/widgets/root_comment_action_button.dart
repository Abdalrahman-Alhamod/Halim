import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../core/translations/locale_keys.g.dart';

class RootCommentActionButton extends StatelessWidget {
  const RootCommentActionButton({
    super.key,
    required this.onReplyPressed,
    required this.isApproved,
    required this.isRoot,
  });
  final bool isApproved;
  final void Function()? onReplyPressed;
  final bool isRoot;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const SizedBox(
          width: 4,
        ),
        isRoot
            ? TextButton(
                onPressed: onReplyPressed,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  LocaleKeys.CourseDetails_Community_reply.tr(),
                ),
              )
            : const SizedBox(),
        isApproved
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      LocaleKeys.CourseDetails_Community_approved.tr(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(
                      Icons.done,
                      color: Colors.green,
                      size: 20,
                    )
                  ],
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
