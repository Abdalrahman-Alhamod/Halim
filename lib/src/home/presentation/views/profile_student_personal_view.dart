import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/widgets/avatar_image_loader.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../achievements/data/models/achievements_board_model.dart';
import '../../../achievements/presentation/manager/achievements_cubit/achievements_cubit.dart';
import '../../../achievements/presentation/views/widgets/achievemenets_numbers.dart';

class ProfileStudentPersonalView extends StatelessWidget {
  const ProfileStudentPersonalView({super.key});

  @override
  Widget build(BuildContext context) {
     context.read<AchievementsCubit>().getAchievementsBoard();
    AchievementsBoardModel achievementsBoardModel =
        context.read<AchievementsCubit>().achievementsBoardModel ??
            const AchievementsBoardModel();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 28,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            // IconButton(
            //   icon: Icon(
            //     Icons.edit,
            //     size: 28,
            //     color: context.isDarkMode ? Colors.white : Colors.black,
            //   ),
            //   onPressed: () {
            //     GoRouter.of(context).push(AppRoute.kEditProfile);
            //   },
            // ),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const SizedBox(
                  height: 50,
                ),
           
            BlocConsumer<AchievementsCubit, AchievementsState>(
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
                  AvatarImageLoader(
                  imageUrl:
                      context.read<HomeCubit>().studentProfileModel!.image,
                  radius: 100,
                ),
                  const SizedBox(
                    height: 20,
                  ),
                //   const SizedBox(
                //   height: 30,
                // ),
                Text(
                  "${context.read<HomeCubit>().studentProfileModel!.firstName} ${context.read<HomeCubit>().studentProfileModel!.lastName} ",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "${LocaleKeys.StudentProfile_Student.tr()} ${context.read<HomeCubit>().studentProfileModel!.major?.name} ",
                  style: TextStyle(
                    fontSize: 20,
                    color: context.isDarkMode
                        ? Colors.grey.shade400
                        : Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 25,
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
    )
          ],
        ),
      ),
    );
  }
}
