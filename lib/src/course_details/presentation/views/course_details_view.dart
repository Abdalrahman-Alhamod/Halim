import 'package:flutter/material.dart';
import 'widgets/course_details_app_bar.dart';
import 'widgets/course_details_bottom_sheet.dart';
import 'widgets/course_details_body.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomSheet: CourseDetailsBottomSheet(),
      body: Stack(
        children: [
          CourseDetailsBody(),
          CourseDetailsAppBar(),
        ],
      ),
    );
  }
}
