import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/my_courses_cubit/my_courses_cubit.dart';
import 'my_course_card.dart';

class CompletedCoursesPage extends StatelessWidget {
  const CompletedCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MyCoursesCubit>().refreshCompletedCourses();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocConsumer<MyCoursesCubit, MyCoursesState>(
        buildWhen: context.read<MyCoursesCubit>().buildCompletedCoursesListWhen,
        listenWhen: context.read<MyCoursesCubit>().listenCompletedCoursesWhen,
        listener: context.read<MyCoursesCubit>().listenCompletedCourses,
        builder: (context, state) {
          return context.read<MyCoursesCubit>().buildCompletedCoursesList(
            context,
            pagingController: context
                .read<MyCoursesCubit>()
                .completedCoursesPagingAdapter
                .pagingController,
            itemBuilder: (_, item, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: MyCourseCard(
                  myCourseCardModel: item,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
