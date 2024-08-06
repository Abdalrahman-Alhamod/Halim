import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import 'course_lessons_section_page_list.dart';
import 'course_lessons_section_header.dart';

class CourseLessonsSection extends StatelessWidget {
  const CourseLessonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().getCourseLessonsSectionsPage();
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        CourseLessonsSectionHeader(),
        SizedBox(
          height: 20,
        ),
        CourseLessonsSectionPageList(),
      ],
    );
  }
}
