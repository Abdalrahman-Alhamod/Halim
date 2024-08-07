import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/card_course.dart';
import '../../manager/my_courses_cubit/my_courses_cubit.dart';

class SavedCoursesPage extends StatelessWidget {
  const SavedCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MyCoursesCubit>().refreshSavedCourses();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocConsumer<MyCoursesCubit, MyCoursesState>(
        buildWhen: context.read<MyCoursesCubit>().buildSavedCoursesListWhen,
        listenWhen: context.read<MyCoursesCubit>().listenSavedCoursesWhen,
        listener: context.read<MyCoursesCubit>().listenSavedCourses,
        builder: (context, state) {
          return context.read<MyCoursesCubit>().buildSavedCoursesList(
            context,
            pagingController: context
                .read<MyCoursesCubit>()
                .savedCoursesPagingAdapter
                .pagingController,
            itemBuilder: (_, item, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CardCourse(
                  courseCardModel: item,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
