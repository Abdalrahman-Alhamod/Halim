import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/utils/context_extensions.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import 'course_lessons_section_sample.dart';
import 'course_lessons_section_header.dart';

class CourseLessonsSection extends StatelessWidget {
  const CourseLessonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().refresh();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const CourseLessonsSectionHeader(),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: context.height * 0.7,
          child: const CourseLessonsSectionSample(),
        ),
      ],
    );
  }
}
