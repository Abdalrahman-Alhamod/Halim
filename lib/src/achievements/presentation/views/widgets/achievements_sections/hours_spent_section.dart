import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../domain/entities/achievemenet_badge.dart';
import '../achievements_progress_indicator.dart';
import '../tracked_badge.dart';

class HoursSpentSection extends StatefulWidget {
  const HoursSpentSection({super.key});

  @override
  State<HoursSpentSection> createState() => _HoursSpentSectionState();
}

class _HoursSpentSectionState extends State<HoursSpentSection> {
  late final List<AchievemenetBadge> _badges;
  @override
  void initState() {
    _badges = [
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Spend 10 Hours',
        current: 10,
        total: 10,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Spend 30 Hours',
        current: 30,
        total: 30,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Spend 50 Hours',
        current: 50,
        total: 50,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Spend 100 Hours',
        current: 100,
        total: 100,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Spend 200 Hours',
        current: 200,
        total: 200,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Spend 500 Hours',
        current: 500,
        total: 500,
      ),

      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Spend 1000 Hours',
        current: 683,
        total: 1000,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Spend 5000 Hours',
        current: 683,
        total: 5000,
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
            title: LocaleKeys.Achievements_Sections_HoursSpent_hoursSpent.tr(),
            current: 6,
            total: 8,
            progressColor: Colors.teal,
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: _badges.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) => TrackedBadge(
              image: _badges[index].image,
              title: _badges[index].name,
              current: _badges[index].current,
              total: _badges[index].total,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
