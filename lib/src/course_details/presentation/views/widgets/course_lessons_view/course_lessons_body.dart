import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';

import '../more_details_section/lessons/course_lessons_section_list.dart';

class CourseLessonsBody extends StatelessWidget {
  const CourseLessonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().refresh();
    return const Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              right: 8,
            ),
            child: CourseLessonsSectionList(),
          ),
        ),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}
