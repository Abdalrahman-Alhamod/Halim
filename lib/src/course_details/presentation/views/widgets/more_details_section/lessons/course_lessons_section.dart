import 'package:flutter/material.dart';
import 'course_lessons_section_sample.dart';
import 'course_lessons_section_header.dart';

class CourseLessonsSection extends StatelessWidget {
  const CourseLessonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        CourseLessonsSectionHeader(
          lessonsNumber: 124,
        ),
        SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_constructors
        CourseLessonsSectionSample(),
      ],
    );
  }
}
