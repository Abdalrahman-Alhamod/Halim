import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../achievements_progress_indicator_loading.dart';

class SummerySectionLoading extends StatelessWidget {
  const SummerySectionLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          AchievementsProgressIndicatorLoading(
            title: LocaleKeys.Achievements_Sections_Summery_totalBudegs.tr(),
          ),
          const SizedBox(
            height: 20,
          ),
          AchievementsProgressIndicatorLoading(
            title:
                LocaleKeys.Achievements_Sections_AvatarLevels_avatarLevels.tr(),
          ),
          AchievementsProgressIndicatorLoading(
            title: LocaleKeys.Achievements_Sections_FirstTime_firstTime.tr(),
          ),
          AchievementsProgressIndicatorLoading(
            title: LocaleKeys
                .Achievements_Sections_CoursesAttended_coursesAttended.tr(),
          ),
          AchievementsProgressIndicatorLoading(
            title: LocaleKeys
                    .Achievements_Sections_CommunityContributions_communityContributions
                .tr(),
          ),
          AchievementsProgressIndicatorLoading(
            title: LocaleKeys.Achievements_Sections_HoursSpent_hoursSpent.tr(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
