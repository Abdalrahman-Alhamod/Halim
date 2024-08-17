import 'package:flutter/material.dart';
import 'package:halim/src/course_details/data/models/comment_model.dart';

import '../../../../../../../../core/themes/app_colors.dart';
import 'functions/build_comment_avatar.dart';
import 'widgets/comment_box.dart';
import 'widgets/comment_tree_widget.dart';
import 'widgets/tree_theme_data.dart';

class CommentsTree extends StatelessWidget {
  const CommentsTree({
    super.key,
    required this.rootComment,
    required this.replies,
    required this.onReply,
  });
  final CommentModel rootComment;
  final List<CommentModel> replies;
  final void Function() onReply;
  @override
  Widget build(BuildContext context) {
    return CommentTreeWidget<CommentModel, CommentModel>(
      rootComment,
      replies,
      treeThemeData: const TreeThemeData(
        lineColor: AppColors.primaryColor,
        lineWidth: 2,
      ),
      avatarRoot: (context, data) => buildCommentAvatar(data: data, radius: 28),
      avatarChild: (context, data) =>
          buildCommentAvatar(data: data, radius: 24),
      contentChild: (context, data) {
        return CommentBox(
          data: data,
        );
      },
      contentRoot: (context, data) {
        return CommentBox(
          data: data,
          isRoot: true,
          onReply: onReply,
        );
      },
    );
  }
}
