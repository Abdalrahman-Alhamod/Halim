import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/local_keys.g.dart';

import 'course_lesson_block.dart';
import 'course_lessons_sub_section.dart';

class CourseLessonsSectionSample extends StatelessWidget {
  const CourseLessonsSectionSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CourseLessonsSubSection(
          title: LocaleKeys.CourseDetails_Test_Lessons_section1.tr(),
          duration: 15,
          widgets: [
            CourseLessonBlock(
              number: 1,
              title: LocaleKeys.CourseDetails_Test_Lessons_title1.tr(),
              duration: 10,
              isLocked: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 2,
              title: LocaleKeys.CourseDetails_Test_Lessons_title2.tr(),
              duration: 5,
              isLocked: true,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_constructors
        CourseLessonsSubSection(
          title: LocaleKeys.CourseDetails_Test_Lessons_section2.tr(),
          duration: 60,
          widgets: [
            CourseLessonBlock(
              number: 3,
              title: LocaleKeys.CourseDetails_Test_Lessons_title3.tr(),
              duration: 15,
              isLocked: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 4,
              title: LocaleKeys.CourseDetails_Test_Lessons_title4.tr(),
              duration: 10,
              isLocked: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 5,
              title: LocaleKeys.CourseDetails_Test_Lessons_title5.tr(),
              duration: 10,
              isLocked: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 6,
              title: LocaleKeys.CourseDetails_Test_Lessons_title6.tr(),
              duration: 25,
              isLocked: true,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_constructors
        CourseLessonsSubSection(
          title: LocaleKeys.CourseDetails_Test_Lessons_section3.tr(),
          duration: 75,
          widgets: [
            CourseLessonBlock(
              number: 7,
              title: LocaleKeys.CourseDetails_Test_Lessons_title7.tr(),
              duration: 35,
              isLocked: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 8,
              title: LocaleKeys.CourseDetails_Test_Lessons_title8.tr(),
              duration: 20,
              isLocked: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 9,
              title: LocaleKeys.CourseDetails_Test_Lessons_title9.tr(),
              duration: 8,
              isLocked: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              number: 10,
              title: LocaleKeys.CourseDetails_Test_Lessons_title10.tr(),
              duration: 12,
              isLocked: true,
            ),
          ],
        ),
      ],
    );
  }
}
