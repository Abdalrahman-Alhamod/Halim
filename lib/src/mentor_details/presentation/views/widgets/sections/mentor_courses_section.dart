import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/mentor_details_cubit/mentor_details_cubit.dart';
import 'widgets/mentor_courses/mentor_courses_header.dart';
import 'widgets/mentor_courses/mentor_courses_page_list.dart';

class MentorCoursesSection extends StatelessWidget {
  const MentorCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MentorDetailsCubit>().getMentorCoursesPage();
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        MentorCoursesHeader(),
        SizedBox(
          height: 10,
        ),
        MentorCoursesPageList(),
      ],
    );
  }
}
