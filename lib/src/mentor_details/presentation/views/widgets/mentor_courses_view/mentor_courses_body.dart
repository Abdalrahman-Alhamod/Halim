import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../home/presentation/views/widgets/card_course.dart';
import '../../../manager/mentor_details_cubit/mentor_details_cubit.dart';

class MentorCoursesBody extends StatelessWidget {
  const MentorCoursesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MentorDetailsCubit, MentorDetailsState>(
      buildWhen: context.read<MentorDetailsCubit>().buildMentorCoursesListWhen,
      listenWhen: context.read<MentorDetailsCubit>().listenMentorCoursesWhen,
      listener: context.read<MentorDetailsCubit>().listenMentorCourses,
      builder: (context, state) {
        return context.read<MentorDetailsCubit>().buildMentorCoursesList(
          context,
          pagingController: context
              .read<MentorDetailsCubit>()
              .mentorCoursesPagingAdapter
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
    );
  }
}
