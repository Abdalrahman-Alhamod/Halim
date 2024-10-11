import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/mentor_courses_view/mentor_courses_app_bar.dart';
import 'widgets/mentor_courses_view/mentor_courses_body.dart';

import '../manager/mentor_details_cubit/mentor_details_cubit.dart';

class MentorCoursesView extends StatelessWidget {
  const MentorCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MentorDetailsCubit>().refreshMentorCourses();
    return const Scaffold(
      appBar: MentorCoursesAppBar(),
      body: MentorCoursesBody(),
    );
  }
}
