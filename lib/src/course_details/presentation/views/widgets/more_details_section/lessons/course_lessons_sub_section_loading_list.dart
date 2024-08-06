import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/lessons/course_lessons_sub_section_loading.dart';

class CourseLessonsSubSectionLoadingList extends StatelessWidget {
  const CourseLessonsSubSectionLoadingList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: CourseLessonsSubSectionLoading(),
      ),
      itemCount: 10,
    );
  }
}
