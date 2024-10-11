import 'package:flutter/material.dart';
import 'course_lessons_sub_section_loading.dart';

class CourseLessonsSubSectionLoadingList extends StatelessWidget {
  const CourseLessonsSubSectionLoadingList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: CourseLessonsSubSectionLoading(),
      ),
      itemCount: 10,
    );
  }
}
