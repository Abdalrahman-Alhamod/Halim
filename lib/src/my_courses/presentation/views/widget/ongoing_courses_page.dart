import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/refresh_base.dart';
import 'my_course_card.dart';
import '../../manager/my_courses_cubit/my_courses_cubit.dart';

class OngoingCoursesPage extends StatelessWidget {
  const OngoingCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MyCoursesCubit>().refreshOngoingCourses();
    return RefreshBase(
      onRefresh: () async {
        context.read<MyCoursesCubit>().refreshOngoingCourses();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: BlocConsumer<MyCoursesCubit, MyCoursesState>(
          buildWhen: context.read<MyCoursesCubit>().buildOngoingCoursesListWhen,
          listenWhen: context.read<MyCoursesCubit>().listenOngoingCoursesWhen,
          listener: context.read<MyCoursesCubit>().listenOngoingCourses,
          builder: (context, state) {
            return context.read<MyCoursesCubit>().buildOngoingCoursesList(
              context,
              pagingController: context
                  .read<MyCoursesCubit>()
                  .ongoingCoursesPagingAdapter
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
      ),
    );
  }
}
