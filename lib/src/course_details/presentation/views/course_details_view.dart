import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'package:provider/provider.dart';
import 'widgets/course_details_app_bar.dart';
import 'widgets/course_details_bottom_sheet.dart';
import 'widgets/course_details_body.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key, required this.courseId});
  final int courseId;
  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().courseId = courseId;
    
    return const Scaffold(
      bottomSheet: CourseDetailsBottomSheet(),
      body: Stack(
        children: [
          CourseDetailsBody(),
          CourseDetailsAppBar(),
        ],
      ),
    );
  }
}
