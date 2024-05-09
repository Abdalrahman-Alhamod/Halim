import 'package:flutter/material.dart';

import '../../../../../../../../../core/themes/app_colors.dart';
import '../data/comment.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({
    super.key,
    required this.data,
  });
  final Comment data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withAlpha(30),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.userName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data.content,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
