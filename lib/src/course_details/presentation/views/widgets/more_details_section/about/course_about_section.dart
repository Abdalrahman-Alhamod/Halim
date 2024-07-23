import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
        const CourseAboutMentor(),
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
