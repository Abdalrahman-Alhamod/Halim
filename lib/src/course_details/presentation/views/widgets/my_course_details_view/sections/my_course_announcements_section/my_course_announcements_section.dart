import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/src/course_details/presentation/views/widgets/my_course_details_view/sections/my_course_announcements_section/widgets/announcement_box.dart';

class MyCourseAnouncementsSection extends StatelessWidget {
  const MyCourseAnouncementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        AnnouncementBox(
          avatarImage: AppImages.testMentor,
          username: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          content: LocaleKeys.CourseDetails_Test_Community_comment4.tr(),
        ),
        AnnouncementBox(
          avatarImage: AppImages.testMentor,
          username: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          content: LocaleKeys.CourseDetails_Test_Community_comment4.tr(),
        ),
        AnnouncementBox(
          avatarImage: AppImages.testMentor,
          username: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          content: LocaleKeys.CourseDetails_Test_Community_comment4.tr(),
        ),
        AnnouncementBox(
          avatarImage: AppImages.testMentor,
          username: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          content: LocaleKeys.CourseDetails_Test_Community_comment4.tr(),
        ),
        AnnouncementBox(
          avatarImage: AppImages.testMentor,
          username: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          content: LocaleKeys.CourseDetails_Test_Community_comment4.tr(),
        ),
      ],
    );
  }
}
