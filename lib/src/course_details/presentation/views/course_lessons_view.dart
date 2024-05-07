import 'package:flutter/material.dart';
import 'widgets/course_enroll_bottom_sheet.dart';
import 'widgets/course_lessons_view/course_lessons_app_bar.dart';
import 'widgets/course_lessons_view/course_lessons_body.dart';

class CourseLessonsView extends StatelessWidget {
  const CourseLessonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomSheet: CourseEnrollButtomSheet(),
      appBar: CourseLessonsAppBar(),
      body: CourseLessonsBody(),
    );
  }
}
