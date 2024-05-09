import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/course_reviews_view/course_reviews_app_bar.dart';

import 'widgets/course_reviews_view/course_reviews_body.dart';

class CourseReviewsView extends StatelessWidget {
  const CourseReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CourseReviewsAppBar(),
      body: CourseReviewsBody(),
    );
  }
}
