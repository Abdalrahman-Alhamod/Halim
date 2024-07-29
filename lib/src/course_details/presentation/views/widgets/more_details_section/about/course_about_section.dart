import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import 'course_about_mentor.dart';
import 'course_keywords.dart';

class CourseAboutSection extends StatelessWidget {
  const CourseAboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          LocaleKeys.CourseDetails_About_mentor.tr(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CourseAboutMentor(
            mentorCardModel: MentorCardModel(
          id: 0,
          firstName:
              LocaleKeys.CourseDetails_Test_courseMentorName.tr().split(' ')[0],
          lastName:
              LocaleKeys.CourseDetails_Test_courseMentorName.tr().split(' ')[1],
          image: AppImages.testMentor,
          headline: LocaleKeys.CourseDetails_Test_courseMentorTitle.tr(),
        )),
        const SizedBox(
          height: 20,
        ),
        Text(
          LocaleKeys.CourseDetails_About_aboutCourse.tr(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ReadMoreText(
          LocaleKeys.CourseDetails_Test_courseAbout.tr(),
          trimMode: TrimMode.Line,
          trimLines: 5,
          colorClickableText: AppColors.primaryColor,
          trimCollapsedText: LocaleKeys.Buttons_readMore.tr(),
          trimExpandedText: LocaleKeys.Buttons_showLess.tr(),
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
          style: TextStyle(
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade600,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const CourseKeywords(),
      ],
    );
  }
}
