import 'package:flutter/material.dart';

import '../more_details_section/lessons/course_lessons_section_list.dart';

class CourseLessonsBody extends StatelessWidget {
  const CourseLessonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: CourseLessonsSectionList(),
        ),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}
