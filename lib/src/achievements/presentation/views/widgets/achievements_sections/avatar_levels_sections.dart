import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../domain/entities/achievemenet_badge.dart';
import '../achievements_progress_indicator.dart';
import '../tracked_badge.dart';

class AvatarLevelsSection extends StatefulWidget {
  const AvatarLevelsSection({super.key});

  @override
  State<AvatarLevelsSection> createState() => _AvatarLevelsSectionState();
}

class _AvatarLevelsSectionState extends State<AvatarLevelsSection> {
  late final List<AchievemenetBadge> _badges;
  @override
  void initState() {
    _badges = [
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 1 Badge',
        current: 1,
        total: 1,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 3 Badge',
        current: 3,
        total: 3,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 6 Badge',
        current: 6,
        total: 6,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 10 Badge',
        current: 10,
        total: 10,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 15 Badge',
        current: 15,
        total: 15,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 23 Badge',
        current: 23,
        total: 23,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Earn 32 Badge',
        current: 32,
        total: 32,
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
            title:
                LocaleKeys.Achievements_Sections_AvatarLevels_avatarLevels.tr(),
            current: 7,
            total: 7,
            progressColor: Colors.deepPurple,
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _badges.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
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
