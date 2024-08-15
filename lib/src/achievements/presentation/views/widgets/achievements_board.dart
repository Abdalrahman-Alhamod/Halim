import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/achievements/data/models/achievements_board_model.dart';
import 'package:halim/src/achievements/data/models/avatar_model.dart';
import 'package:halim/src/achievements/presentation/manager/achievements_cubit/achievements_cubit.dart';

import 'achievemenets_numbers.dart';
import 'achievements_avatar.dart';

class AchievementsBoard extends StatelessWidget {
  const AchievementsBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<AchievementsCubit>().getAchievementsBoard();
    AchievementsBoardModel achievementsBoardModel =
        context.read<AchievementsCubit>().achievementsBoardModel ??
            const AchievementsBoardModel();
    return BlocConsumer<AchievementsCubit, AchievementsState>(
      buildWhen: context.read<AchievementsCubit>().buildAchievementsBoardWhen,
      listenWhen: context.read<AchievementsCubit>().listenAchievementsBoardWhen,
      listener: context.read<AchievementsCubit>().listenAchievementsBoard,
      builder: (context, state) {
        state.whenOrNull(
          fetchAchievemenetsBoardSuccess: (data, message) {
            achievementsBoardModel = data;
          },
        );
        return context.read<AchievementsCubit>().buildAchievementsBoard(
              context: context,
              state: state,
              child: Column(
                children: [
                  AchievementsAvatar(
                    avatarModel:
                        achievementsBoardModel.avatar ?? const AvatarModel(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AchievementsNumbers(
                    rank: achievementsBoardModel.rank ?? '',
                    points: achievementsBoardModel.points ?? 0,
                    totalHours: achievementsBoardModel.numberOfHours ?? 0,
                    totalCourses: achievementsBoardModel.coursesCount ?? 0,
                    contributions: achievementsBoardModel.contributions ?? 0,
                    monthlyRate: achievementsBoardModel.avgTime ?? 0,
                  ),
                ],
              ),
            );
      },
    );
  }
}
