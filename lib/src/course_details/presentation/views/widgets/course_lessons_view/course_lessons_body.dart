import 'package:flutter/material.dart';

import '../more_details_section/lessons/course_lessons_section_sample.dart';

class CourseLessonsBody extends StatelessWidget {
  const CourseLessonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24.0,
              right: 24,
            ),
            child: CourseLessonsSectionSample(),
          ),
          SizedBox(
            height: 130,
          )
        ],
      ),
    );
  }
}
