import 'package:flutter/material.dart';
import 'course_reviews_section_header.dart';

import 'course_reviews_sample.dart';
import 'review_stars_bar/course_reviews_stars_bar.dart';

class CourseReviewsSection extends StatelessWidget {
  const CourseReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const CourseReviewsSectionHeader(),
        const SizedBox(
          height: 20,
        ),
        CourseReviewsStarsBar(
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 20,
        ),
        const CourseReviewsSample(),
      ],
    );
  }
}
