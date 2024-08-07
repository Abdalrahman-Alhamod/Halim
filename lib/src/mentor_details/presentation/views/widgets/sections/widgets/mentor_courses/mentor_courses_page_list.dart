import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/home/presentation/views/widgets/card_course.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';

import '../../../../../../../shared/model/course_card_model.dart';

class MentorCoursesPageList extends StatelessWidget {
  const MentorCoursesPageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CourseCardModel> mentorCoursesPage = [];
    return BlocConsumer<MentorDetailsCubit, MentorDetailsState>(
      buildWhen: context.read<MentorDetailsCubit>().buildMentorCoursesPageWhen,
      listenWhen:
          context.read<MentorDetailsCubit>().listenMentorCoursesPageWhen,
      listener: context.read<MentorDetailsCubit>().listenMentorCoursesPage,
      builder: (context, state) {
        state.whenOrNull(
          fetchMentorCoursesPageSuccess: (courses, message) {
            mentorCoursesPage = courses;
          },
        );
        return context.read<MentorDetailsCubit>().buildMentorCoursesPage(
              context: context,
              state: state,
              child: ListView.builder(
                itemCount: mentorCoursesPage.length,
                shrinkWrap: true,
                
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CardCourse(
                    courseCardModel: mentorCoursesPage[index],
                  ),
                ),
              ),
            );
      },
    );
  }
}
