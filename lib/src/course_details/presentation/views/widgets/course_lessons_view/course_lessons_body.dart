import 'package:flutter/material.dart';

import '../more_details_section/lessons/course_lessons_section_sample.dart';

class CourseLessonsBody extends StatelessWidget {
  const CourseLessonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              right: 8,
            ),
            child: CourseLessonsSectionSample(),
          ),
        ),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}
