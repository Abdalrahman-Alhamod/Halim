import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/my_courses/presentation/views/widget/follow_course.dart';

class OngoingCoursesPage extends StatelessWidget {
  const OngoingCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 220,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FollowCourse(
              imageUrl: AppImages.testCourseCover,
              name: LocaleKeys.CourseDetails_Test_courseTitle.tr(),
              allEpisodes: 40,
              completedEpisodes: Random().nextInt(40),
              hours: Random().nextInt(80),
              min: Random().nextInt(55),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
