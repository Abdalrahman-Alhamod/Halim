import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/constants/app_sizes.dart';
import 'package:halim/core/themes/app_colors.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../achievements_progress_indicator.dart';

class SummerySection extends StatelessWidget {
  const SummerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          AchievementsProgressIndicator(
            title: LocaleKeys.Achievements_Sections_Summery_totalBudegs.tr(),
            current: 19,
            total: 39,
            progressColor: AppColors.primaryColor,
          ),
          SizedBox(
            height: 20,
          ),
          AchievementsProgressIndicator(
            title:
                LocaleKeys.Achievements_Sections_AvatarLevels_avatarLevels.tr(),
            current: 7,
            total: 7,
            progressColor: Colors.deepPurple,
          ),
          AchievementsProgressIndicator(
            title: LocaleKeys.Achievements_Sections_FirstTime_firstTime.tr(),
            current: 2,
            total: 6,
            progressColor: Colors.deepOrange,
          ),
          AchievementsProgressIndicator(
            title: LocaleKeys
                .Achievements_Sections_CoursesAttended_coursesAttended.tr(),
            current: 1,
            total: 6,
            progressColor: Colors.pink,
          ),
          AchievementsProgressIndicator(
            title: LocaleKeys
                    .Achievements_Sections_CommunityContributions_communityContributions
                .tr(),
            current: 3,
            total: 6,
            progressColor: Colors.brown,
          ),
          AchievementsProgressIndicator(
            title: LocaleKeys.Achievements_Sections_HoursSpent_hoursSpent.tr(),
            current: 6,
            total: 8,
            progressColor: Colors.teal,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
