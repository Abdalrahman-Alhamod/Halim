import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/mentor_details_app_bar.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/mentor_details_body.dart';

class MentorDetailsView extends StatelessWidget {
  const MentorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MentorDetailsAppBar(),
      body: MentorDetailsBody(),
    );
  }
}
