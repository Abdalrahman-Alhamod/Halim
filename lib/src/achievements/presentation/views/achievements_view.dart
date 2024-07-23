import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/widgets/sections_view/data/section_page.dart';
import '../../../../core/widgets/sections_view/sections_view.dart';
import 'widgets/achievemenets_numbers.dart';
import 'widgets/achievements_sections/avatar_levels_sections.dart';
import 'widgets/achievements_sections/community_contributions_section.dart';
import 'widgets/achievements_sections/course_attended_section.dart';
import 'widgets/achievements_sections/first_time_section.dart';
import 'widgets/achievements_sections/summery_section.dart';
import 'widgets/achievements_sections/hours_spent_section.dart';
import 'widgets/achievements_app_bar.dart';
import 'widgets/achievements_avatar.dart';

class AchievementsView extends StatelessWidget {
  const AchievementsView({super.key});

  @override
  Widget build(BuildContext context) {
    context.isEnglish;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AchievementsAppBar(),
            const SizedBox(
              height: 10,
            ),
            const AchievementsAvatar(),
            const SizedBox(
              height: 10,
            ),
            AchievementsNumbers(
              rank: Random().nextInt(20),
              points: Random().nextInt(1000),
              totalHours: 683,
              totalCourses: 7,
              contributions: 120,
              monthlyRate: 56.3,
            ),
            SectionsView(pages: [
              SectionPage(
                title: LocaleKeys.Achievements_Sections_Summery_summery.tr(),
                child: const SummerySection(),
              ),
              SectionPage(
                title: LocaleKeys
                    .Achievements_Sections_AvatarLevels_avatarLevels.tr(),
                child: const AvatarLevelsSection(),
              ),
              SectionPage(
                title:
                    LocaleKeys.Achievements_Sections_FirstTime_firstTime.tr(),
                child: const FirstTimeSection(),
              ),
              SectionPage(
                title: LocaleKeys
                    .Achievements_Sections_CoursesAttended_coursesAttended.tr(),
                child: const CourseAttendedSection(),
              ),
              SectionPage(
                title: LocaleKeys
                        .Achievements_Sections_CommunityContributions_communityContributions
                    .tr(),
                child: const CommunityContributionsSection(),
              ),
              SectionPage(
                title:
                    LocaleKeys.Achievements_Sections_HoursSpent_hoursSpent.tr(),
                child: const HoursSpentSection(),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
