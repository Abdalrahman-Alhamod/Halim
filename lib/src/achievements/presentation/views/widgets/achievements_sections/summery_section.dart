import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/themes/app_colors.dart';

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
          const SizedBox(
            height: 10,
          ),
          AchievementsProgressIndicator(
            title: LocaleKeys.Achievements_Sections_Summery_totalBudegs.tr(),
            current: 19,
            total: 39,
            progressColor: AppColors.primaryColor,
          ),
          const SizedBox(
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
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
