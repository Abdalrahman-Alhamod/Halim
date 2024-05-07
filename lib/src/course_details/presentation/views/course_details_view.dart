import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/course_details_app_bar.dart';
import 'widgets/course_details_body.dart';
import 'widgets/course_enroll_bottom_sheet.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomSheet: CourseEnrollButtomSheet(),
      body: Stack(
        children: [
          CourseDetailsBody(),
          CourseDetailsAppBar(),
        ],
      ),
    );
  }
}
