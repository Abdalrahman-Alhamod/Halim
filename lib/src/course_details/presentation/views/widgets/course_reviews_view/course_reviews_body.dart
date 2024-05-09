import 'package:flutter/material.dart';

import '../more_details_section/reviews/course_reviews_sample.dart';
import '../more_details_section/reviews/course_reviews_stars_bar.dart';

class CourseReviewsBody extends StatelessWidget {
  const CourseReviewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseReviewsStarsBar(),
            SizedBox(
              height: 20,
            ),
            CourseReviewsSample(),
          ],
        ),
      ),
    );
  }
}
