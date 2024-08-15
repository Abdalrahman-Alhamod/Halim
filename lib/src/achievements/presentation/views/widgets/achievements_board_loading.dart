
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/assets/app_svgs.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/avatar_loading.dart';
import '../../../../../core/widgets/shimmer_box.dart';
import 'achievements_number_card_loading.dart';
import 'achievements_numbers_list_tile_loading.dart';

class AchievementsBoardLoading extends StatelessWidget {
  const AchievementsBoardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const AvatarLoading(
              radius: 105,
            ),
            const SizedBox(
              height: 10,
            ),
            ShimmerBox(
              height: 28,
              width: context.width * 0.4,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              children: [
                AchievementsNumberCardLoading(
                  title: LocaleKeys.Achievements_rank.tr(),
                ),
                AchievementsNumberCardLoading(
                  title: LocaleKeys.Achievements_points.tr(),
                ),
              ],
            ),
            SizedBox(
              height: 180,
              child: GridView(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                ),
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  AchievementsNumbersListTileLoading(
                    title: LocaleKeys.Achievements_totalHours.tr(),
                    svgPath: AppSVGs.clock,
                  ),
                  AchievementsNumbersListTileLoading(
                    title: LocaleKeys.Achievements_totalCourses.tr(),
                    svgPath: AppSVGs.course,
                  ),
                  AchievementsNumbersListTileLoading(
                    title: LocaleKeys.Achievements_contributions.tr(),
                    svgPath: AppSVGs.discussion,
                  ),
                  AchievementsNumbersListTileLoading(
                    title: LocaleKeys.Achievements_monthlyRate.tr(),
                    svgPath: AppSVGs.calendar,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
