import 'package:flutter/material.dart';

import '../../../../../../../../../core/themes/app_colors.dart';
import '../data/comment.dart';
import 'root_comment_action_button.dart';

class CommentBox extends StatelessWidget {
  const CommentBox(
      {super.key, required this.data, this.isRoot = false, this.onReply});
  final Comment data;
  final bool isRoot;
  final void Function()? onReply;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withAlpha(30),
            borderRadius: BorderRadius.circular(12),
            border: data.isApproved
                ? Border.all(
                    color: Colors.green,
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.userName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                data.content,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        RootCommentActionButton(
          onReplyPressed: onReply,
          isApproved: data.isApproved,
          isRoot: isRoot,
        ),
      ],
    );
  }
}
