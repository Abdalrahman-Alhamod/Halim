import 'package:flutter/material.dart';
import 'widgets/course_community_comments_sample.dart';

class CourseCommunitySection extends StatelessWidget {
  const CourseCommunitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         SizedBox(
          height: 20,
        ),
          CourseCommunityCommentsSample(),
      ],
    );
  }
}
