import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/assets/app_svgs.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import 'achievements_main_card.dart';
import 'achievements_numbers_list_tile.dart';

class AchievementsNumbers extends StatelessWidget {
  const AchievementsNumbers({
    super.key,
    required this.rank,
    required this.points,
    required this.totalHours,
    required this.totalCourses,
    required this.contributions,
    required this.monthlyRate,
  });
  final int rank;
  final int points;
  final int totalHours;
  final int totalCourses;
  final int contributions;
  final num monthlyRate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AchievementsNumbersCard(
              title: LocaleKeys.Achievements_rank.tr(),
              content: RankText(rank: rank),
            ),
            AchievementsNumbersCard(
              title: LocaleKeys.Achievements_points.tr(),
              content: PointsText(points: points),
            ),
          ],
        ),
        SizedBox(
          height: 170,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
            ),
            children: [
              AchievementsNumbersListTile(
                title: LocaleKeys.Achievements_totalHours.tr(),
                value: totalHours,
                svgPath: AppSVGs.clock,
              ),
              AchievementsNumbersListTile(
                title: LocaleKeys.Achievements_totalCourses.tr(),
                value: totalCourses,
                svgPath: AppSVGs.course,
              ),
              AchievementsNumbersListTile(
                title: LocaleKeys.Achievements_contributions.tr(),
                value: contributions,
                svgPath: AppSVGs.discussion,
              ),
              AchievementsNumbersListTile(
                title: LocaleKeys.Achievements_monthlyRate.tr(),
                value: monthlyRate,
                svgPath: AppSVGs.calendar,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
