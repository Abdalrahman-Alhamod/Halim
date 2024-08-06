import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/lessons/course_lessons_sub_section_loading.dart';

class CourseLessonsSubSectionLoadList extends StatelessWidget {
  const CourseLessonsSubSectionLoadList({super.key, this.itemCount = 10});
  final int? itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < (itemCount ?? 0); i++) content(context),
      ],
    );
  }

  content(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: CourseLessonsSubSectionLoading(),
    );
  }
}
