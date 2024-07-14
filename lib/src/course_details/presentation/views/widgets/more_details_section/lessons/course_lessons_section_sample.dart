import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';

import '../../../../../domain/entities/course_lesson_type.dart';
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
          description: LocaleKeys.CourseDetails_Test_Lessons_desc1.tr(),
          duration: 15,
          widgets: [
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title1.tr(),
              duration: 10,
              isLocked: false,
              type: CourseLessonType.video,
              isDone: false,
              isDownloaded: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title2.tr(),
              duration: 5,
              isLocked: true,
              type: CourseLessonType.video,
              isDone: false,
              isDownloaded: false,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_constructors
        CourseLessonsSubSection(
          title: LocaleKeys.CourseDetails_Test_Lessons_section2.tr(),
          description: LocaleKeys.CourseDetails_Test_Lessons_desc2.tr(),
          duration: 60,
          widgets: [
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title3.tr(),
              duration: 15,
              isLocked: true,
              type: CourseLessonType.video,
              isDone: false,
              isDownloaded: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title4.tr(),
              duration: 10,
              isLocked: true,
              type: CourseLessonType.video,
              isDone: false,
              isDownloaded: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title5.tr(),
              duration: 10,
              isLocked: false,
              type: CourseLessonType.reading,
              isDone: true,
              isDownloaded: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title6.tr(),
              duration: 25,
              isLocked: false,
              type: CourseLessonType.quiz,
              isDone: true,
              questionNumber: 10,
              isDownloaded: false,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_constructors
        CourseLessonsSubSection(
          title: LocaleKeys.CourseDetails_Test_Lessons_section3.tr(),
          description: LocaleKeys.CourseDetails_Test_Lessons_desc3.tr(),
          duration: 75,
          widgets: [
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title7.tr(),
              duration: 35,
              isLocked: false,
              type: CourseLessonType.video,
              isDone: false,
              isDownloaded: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title8.tr(),
              duration: 20,
              isLocked: true,
              type: CourseLessonType.video,
              isDone: false,
              isDownloaded: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title9.tr(),
              duration: 8,
              isLocked: false,
              type: CourseLessonType.reading,
              isDone: false,
              isDownloaded: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CourseLessonBlock(
              title: LocaleKeys.CourseDetails_Test_Lessons_title10.tr(),
              duration: 12,
              isLocked: false,
              type: CourseLessonType.quiz,
              isDone: false,
              questionNumber: 10,
              isDownloaded: false,
            ),
          ],
        ),
      ],
    );
  }
}
