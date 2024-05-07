import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import 'main_details_section/course_main_details_section.dart';
import 'main_details_section/course_video_cover.dart';
import 'more_details_section/course_more_details_section.dart';

class CourseDetailsBody extends StatelessWidget {
  const CourseDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const CourseVideoCover(),
        Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 24.0,
            right: 24.0,
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
                    ? Colors.grey.shade400
                    : Colors.grey.shade200,
              ),
              const CourseMoreDetailsSection(),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        )
      ],
    );
  }
}
