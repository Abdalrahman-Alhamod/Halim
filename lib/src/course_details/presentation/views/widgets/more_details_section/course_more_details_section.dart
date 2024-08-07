import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/widgets/sections_view/data/section_page.dart';
import '../../../../../../core/widgets/sections_view/sections_view.dart';
import 'about/course_about_section.dart';
import 'lessons/course_lessons_section.dart';
import 'reviews/course_reviews_section.dart';

import '../../../../../../core/translations/locale_keys.g.dart';

class CourseMoreDetailsSection extends StatelessWidget {
  const CourseMoreDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionsView(
      pages: [
        SectionPage(
          title: LocaleKeys.CourseDetails_Sections_about.tr(),
          child: const CourseAboutSection(),
        ),
        SectionPage(
          title: LocaleKeys.CourseDetails_Sections_lessons.tr(),
          child: const CourseLessonsSection(),
        ),
        SectionPage(
          title: LocaleKeys.CourseDetails_Sections_reviews.tr(),
          child: const CourseReviewsSection(),
        ),
      ],
    );
  }
}
