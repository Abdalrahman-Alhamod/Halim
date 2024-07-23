import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../achievements_progress_indicator.dart';

import '../../../../domain/entities/achievemenet_badge.dart';

class FirstTimeSection extends StatefulWidget {
  const FirstTimeSection({super.key});

  @override
  State<FirstTimeSection> createState() => _FirstTimeSectionState();
}

class _FirstTimeSectionState extends State<FirstTimeSection> {
  late final List<AchievemenetBadge> _badges;
  @override
  void initState() {
    _badges = [
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'First Course',
        current: 1,
        total: 1,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'First Contribution',
        current: 1,
        total: 1,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'First Success Test',
        current: 0,
        total: 1,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'First Hour',
        current: 0,
        total: 1,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Create Account',
        current: 0,
        total: 1,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'First Charge',
        current: 0,
        total: 1,
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
            title: LocaleKeys.Achievements_Sections_FirstTime_firstTime.tr(),
            current: 2,
            total: 6,
            progressColor: Colors.deepOrange,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: _badges.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return StaticBadge(
                image: _badges[index].image,
                title: _badges[index].name,
              );
            },
          ),
        ],
      ),
    );
  }
}

class StaticBadge extends StatelessWidget {
  const StaticBadge({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
