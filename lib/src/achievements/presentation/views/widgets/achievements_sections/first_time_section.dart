import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/achievements/data/models/badge_model.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../data/models/achievements_summery_model.dart';
import '../../../manager/achievements_cubit/achievements_cubit.dart';
import '../achievements_progress_indicator.dart';

import '../achievements_progress_indicator_loading.dart';
import '../static_badge.dart';

class FirstTimeSection extends StatelessWidget {
  const FirstTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AchievementsCubit>().getFirstTimeBadges();
    List<BadgeModel> badges =
        context.read<AchievementsCubit>().firstTimeBadges ?? [];
    AchievementsSummeryModel achievementsSummeryModel =
        context.read<AchievementsCubit>().achievementsSummeryModel ??
            const AchievementsSummeryModel();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.pad16,
      ),
      child: Column(
        children: [
          BlocBuilder<AchievementsCubit, AchievementsState>(
            buildWhen:
                context.read<AchievementsCubit>().buildAchievementsSummeryWhen,
            builder: (context, state) {
              state.whenOrNull(
                fetchAchievemenetsSummerySuccess: (data, message) {
                  achievementsSummeryModel = data;
                },
              );
              var achievementsProgressIndicator = AchievementsProgressIndicator(
                title:
                    LocaleKeys.Achievements_Sections_FirstTime_firstTime.tr(),
                current: achievementsSummeryModel.firstTime ?? 0,
                total: achievementsSummeryModel.firstTimeCount ?? 0,
                progressColor: Colors.deepOrange,
              );
              return state.maybeWhen(
                fetchAchievemenetsSummeryLoading: () =>
                    AchievementsProgressIndicatorLoading(
                  title:
                      LocaleKeys.Achievements_Sections_FirstTime_firstTime.tr(),
                ),
                fetchAchievemenetsSummerySuccess: (_, __) {
                  return achievementsProgressIndicator;
                },
                fetchAchievemenetsSummeryFailure: (_) => const SizedBox(),
                orElse: () {
                  return achievementsProgressIndicator;
                },
              );
            },
          ),
          BlocConsumer<AchievementsCubit, AchievementsState>(
            buildWhen: (previous, current) {
              return context
                  .read<AchievementsCubit>()
                  .buildBadgesWhen(previous, current, AppUrl.kFirstTime);
            },
            listenWhen: context.read<AchievementsCubit>().listenBadgesWhen,
            listener: context.read<AchievementsCubit>().listenBadges,
            builder: (context, state) {
              state.whenOrNull(
                fetchBadgesSuccess: (data, message) {
                  badges = data;
                },
              );
              return context.read<AchievementsCubit>().buildFirstTimeBadges(
                    context: context,
                    state: state,
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: badges.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return StaticBadge(
                          image: badges[index].image ?? '',
                          title: badges[index].name ?? '',
                        );
                      },
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
