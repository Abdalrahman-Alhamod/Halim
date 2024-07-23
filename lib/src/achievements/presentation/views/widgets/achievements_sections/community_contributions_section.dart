import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../domain/entities/achievemenet_badge.dart';
import '../achievements_progress_indicator.dart';
import '../tracked_badge.dart';

class CommunityContributionsSection extends StatefulWidget {
  const CommunityContributionsSection({super.key});

  @override
  State<CommunityContributionsSection> createState() =>
      _CommunityContributionsSectionState();
}

class _CommunityContributionsSectionState
    extends State<CommunityContributionsSection> {
  late final List<AchievemenetBadge> _badges;
  @override
  void initState() {
    _badges = [
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Make 10 Contributions',
        current: 10,
        total: 10,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Make 50 Contributions',
        current: 50,
        total: 50,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Make 100 Contributions',
        current: 100,
        total: 100,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Make 1000 Contributions',
        current: 120,
        total: 1000,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Make 10000 Contributions',
        current: 120,
        total: 10000,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Make 50000 Contributions',
        current: 120,
        total: 50000,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.pad16,
      ),
      child: Column(
        children: [
          AchievementsProgressIndicator(
            title: LocaleKeys
                    .Achievements_Sections_CommunityContributions_communityContributions
                .tr(),
            current: 3,
            total: 6,
            progressColor: Colors.brown,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: _badges.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => TrackedBadge(
              image: _badges[index].image,
              title: _badges[index].name,
              current: _badges[index].current,
              total: _badges[index].total,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
