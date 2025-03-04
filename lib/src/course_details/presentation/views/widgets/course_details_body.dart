import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import 'main_details_section/course_main_details_section.dart';
import 'main_details_section/course_video_cover.dart';
import 'more_details_section/course_more_details_section.dart';

class CourseDetailsBody extends StatelessWidget {
  const CourseDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          const CourseIntroVideo(),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CourseMainDetailsSection(),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  color: context.isDarkMode
                      ? Colors.grey.shade800
                      : Colors.grey.shade700,
                ),
                const CourseMoreDetailsSection(),
                const SizedBox(
                  height: 120,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
