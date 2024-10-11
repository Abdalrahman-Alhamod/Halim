import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/achievements_summery_model.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/themes/app_colors.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../manager/achievements_cubit/achievements_cubit.dart';
import '../achievements_progress_indicator.dart';

class SummerySection extends StatelessWidget {
  const SummerySection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AchievementsCubit>().getAchievementsSummery();
    AchievementsSummeryModel achievementsSummeryModel =
        context.read<AchievementsCubit>().achievementsSummeryModel ??
            const AchievementsSummeryModel();
    return BlocConsumer<AchievementsCubit, AchievementsState>(
      buildWhen: context.read<AchievementsCubit>().buildAchievementsSummeryWhen,
      listenWhen:
          context.read<AchievementsCubit>().listenAchievementsSummeryWhen,
      listener: context.read<AchievementsCubit>().listenAchievementsSummery,
      builder: (context, state) {
        state.whenOrNull(
          fetchAchievemenetsSummerySuccess: (data, message) {
            achievementsSummeryModel = data;
          },
        );
        return context.read<AchievementsCubit>().buildAchievementsSummery(
              context: context,
              state: state,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    AchievementsProgressIndicator(
                      title: LocaleKeys
                          .Achievements_Sections_Summery_totalBudegs.tr(),
                      current: achievementsSummeryModel.badgesAchieved ?? 0,
                      total: achievementsSummeryModel.badgesCount ?? 0,
                      progressColor: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AchievementsProgressIndicator(
                      title: LocaleKeys
                          .Achievements_Sections_AvatarLevels_avatarLevels.tr(),
                      current: achievementsSummeryModel.avatarsAchieved ?? 0,
                      total: achievementsSummeryModel.avatarCount ?? 0,
                      progressColor: Colors.deepPurple,
                    ),
                    AchievementsProgressIndicator(
                      title: LocaleKeys
                          .Achievements_Sections_FirstTime_firstTime.tr(),
                      current: achievementsSummeryModel.firstTime ?? 0,
                      total: achievementsSummeryModel.firstTimeCount ?? 0,
                      progressColor: Colors.deepOrange,
                    ),
                    AchievementsProgressIndicator(
                      title: LocaleKeys
                              .Achievements_Sections_CoursesAttended_coursesAttended
                          .tr(),
                      current: achievementsSummeryModel.courses ?? 0,
                      total: achievementsSummeryModel.coursesCount ?? 0,
                      progressColor: Colors.pink,
                    ),
                    AchievementsProgressIndicator(
                      title: LocaleKeys
                              .Achievements_Sections_CommunityContributions_communityContributions
                          .tr(),
                      current: achievementsSummeryModel.contributions ?? 0,
                      total: achievementsSummeryModel.contributionsCount ?? 0,
                      progressColor: Colors.brown,
                    ),
                    AchievementsProgressIndicator(
                      title: LocaleKeys
                          .Achievements_Sections_HoursSpent_hoursSpent.tr(),
                      current: achievementsSummeryModel.hours ?? 0,
                      total: achievementsSummeryModel.hoursCount ?? 0,
                      progressColor: Colors.teal,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            );
      },
    );
  }
}
