import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/enroll_course_app_bar.dart';
import 'widgets/enroll_course_view/enroll_course_body.dart';
import 'widgets/enroll_course_view/enroll_course_bottom_sheet.dart';

class EnrollCourseView extends StatelessWidget {
  const EnrollCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: EnrollCourseAppBar(),
      body: EnrollCourseBody(),
      bottomSheet: EnrollCourseBottomSheet(),
    );
  }
}
