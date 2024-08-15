import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/widgets/sections_view/data/section_page.dart';
import '../../../../../core/widgets/sections_view/sections_view.dart';
import '../../manager/mentor_details_cubit/mentor_details_cubit.dart';
import 'sections/widgets/mentor_about_me/mentor_about_me_section.dart';
import 'sections/mentor_courses_section.dart';
import 'sections/mentor_reviews_section.dart';

import '../../../../../core/translations/locale_keys.g.dart';
import 'sections/widgets/mentor_main_details/mentor_main_details.dart';

class MentorDetailsBody extends StatelessWidget {
  const MentorDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MentorDetailsCubit>().getMentorDetails();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
