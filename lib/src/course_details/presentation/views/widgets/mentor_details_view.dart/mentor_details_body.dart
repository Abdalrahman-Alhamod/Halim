import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/sections_view/data/section_page.dart';
import 'package:halim/core/widgets/sections_view/sections_view.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/sections/mentor_about_me_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/sections/mentor_courses_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/sections/mentor_reviews_section.dart';

import '../../../../../../core/translations/local_keys.g.dart';
import 'widgets/mentor_image_name_title.dart';
import 'widgets/mentor_main_details.dart';

class MentorDetailsBody extends StatelessWidget {
  const MentorDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const MentorImageNameTitle(),
              const SizedBox(
                height: 30,
              ),
              const MentorMainDetails(),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: context.isDarkMode
                    ? Colors.grey.shade800
                    : Colors.grey.shade900,
              ),
              SectionsView(
                pages: [
                  SectionPage(
                    title: LocaleKeys.CourseDetails_Mentor_aboutMe.tr(),
                    child: const MentorAboutMeSection(),
                  ),
                  SectionPage(
                    title: LocaleKeys.CourseDetails_Mentor_courses.tr(),
                    child: const MentorCoursesSection(),
                  ),
                  SectionPage(
                    title: LocaleKeys.CourseDetails_Sections_reviews.tr(),
                    child: const MentorReviewsSection(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
