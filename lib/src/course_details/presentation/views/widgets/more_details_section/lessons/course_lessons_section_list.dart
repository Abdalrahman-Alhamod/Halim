import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';

import 'course_lessons_sub_section.dart';

class CourseLessonsSectionList extends StatelessWidget {
  const CourseLessonsSectionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
      buildWhen:
          context.read<CourseDetailsCubit>().buildCourseLessonsSectionsListWhen,
      listenWhen:
          context.read<CourseDetailsCubit>().listenCourseLessonsSectionsWhen,
      listener: context.read<CourseDetailsCubit>().listenCourseLessonsSections,
      builder: (context, state) {
        return context
            .read<CourseDetailsCubit>()
            .buildCourseLessonsSectionsList(
          context,
          pagingController: context
              .read<CourseDetailsCubit>()
              .courseLessonsSectionsPagingAdapter
              .pagingController,
          itemBuilder: (_, item, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CourseLessonsSubSection(
                lessonsSectionModel: item,
              ),
            );
          },
        );
      },
    );
  }
}
