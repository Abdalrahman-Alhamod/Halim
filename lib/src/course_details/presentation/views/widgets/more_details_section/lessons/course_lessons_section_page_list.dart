import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';

import '../../../../../data/models/lessons_section_model.dart';
import 'course_lessons_sub_section.dart';

class CourseLessonsSectionPageList extends StatelessWidget {
  const CourseLessonsSectionPageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<LessonsSectionModel> courseLessonsSectionsPage = [];
    return BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
      buildWhen:
          context.read<CourseDetailsCubit>().buildCourseLessonsSectionsPageWhen,
      listenWhen: context
          .read<CourseDetailsCubit>()
          .listenCourseLessonsSectionsPageWhen,
      listener:
          context.read<CourseDetailsCubit>().listenCourseLessonsSectionsPage,
      builder: (context, state) {
        state.whenOrNull(
          fetchCourseLessonsSectionsPageSuccess:
              (stateCourseLessonsSectionsPage, message) {
            courseLessonsSectionsPage = stateCourseLessonsSectionsPage;
          },
        );
        return context
            .read<CourseDetailsCubit>()
            .buildCourseLessonsSectionsPage(
              context: context,
              state: state,
              child: ListView.builder(
                itemCount: courseLessonsSectionsPage.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CourseLessonsSubSection(
                    lessonsSectionModel: courseLessonsSectionsPage[index],
                  ),
                ),
              ),
            );
      },
    );
  }
}
