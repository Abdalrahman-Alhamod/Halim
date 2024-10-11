import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/avatar_model.dart';
import '../achievements_progress_indicator_loading.dart';
import '../avatar_progress_bar.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../data/models/achievements_summery_model.dart';
import '../../../manager/achievements_cubit/achievements_cubit.dart';
import '../achievements_progress_indicator.dart';

class AvatarLevelsSection extends StatelessWidget {
  const AvatarLevelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AchievementsCubit>().getAvatars();
    List<AvatarModel> avatars = context.read<AchievementsCubit>().avatars ?? [];
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
                title: LocaleKeys
                    .Achievements_Sections_AvatarLevels_avatarLevels.tr(),
                current: achievementsSummeryModel.avatarsAchieved ?? 0,
                total: achievementsSummeryModel.avatarCount ?? 0,
                progressColor: Colors.deepPurple,
              );
              return state.maybeWhen(
                fetchAchievemenetsSummeryLoading: () =>
                    AchievementsProgressIndicatorLoading(
                  title: LocaleKeys
                      .Achievements_Sections_AvatarLevels_avatarLevels.tr(),
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
          const SizedBox(
            height: 10,
          ),
          BlocConsumer<AchievementsCubit, AchievementsState>(
            buildWhen: context.read<AchievementsCubit>().buildAvatarsWhen,
            listenWhen: context.read<AchievementsCubit>().listenAvatarsWhen,
            listener: context.read<AchievementsCubit>().listenAvatars,
            builder: (context, state) {
              state.whenOrNull(
                fetchAvatarsSuccess: (data, message) {
                  avatars = data;
                },
              );
              return context.read<AchievementsCubit>().buildAvatars(
                    context: context,
                    state: state,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: avatars.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemBuilder: (context, index) => AvatarProgressBar(
                        avatarModel: avatars[index],
                      ),
                    ),
                  );
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
