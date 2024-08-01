import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/reviews/course_review_block_loading.dart';

class CourseReviewBlockLoadingList extends StatelessWidget {
  const CourseReviewBlockLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => const CourseReviewBlockLoading(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
