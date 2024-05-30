import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/reviews/course_reviews_section_header.dart';

import 'course_reviews_sample.dart';
import 'review_stars_bar/course_reviews_stars_bar.dart';

class CourseReviewsSection extends StatelessWidget {
  const CourseReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        CourseReviewsSectionHeader(),
        SizedBox(
          height: 20,
        ),
        CourseReviewsStarsBar(
          onChanged: (value) {},
        ),
        SizedBox(
          height: 20,
        ),
        CourseReviewsSample(),
      ],
    );
  }
}
