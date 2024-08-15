import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../data/models/achievements_summery_model.dart';
import '../../../../data/models/badge_model.dart';
import '../../../manager/achievements_cubit/achievements_cubit.dart';
import '../achievements_progress_indicator.dart';
import '../achievements_progress_indicator_loading.dart';
import '../tracked_badge.dart';

class CourseAttendedSection extends StatelessWidget {
  const CourseAttendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AchievementsCubit>().getCoursesAttendedBadges();
    List<BadgeModel> badges =
        context.read<AchievementsCubit>().coursesAttendedBadges ?? [];
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
                    .Achievements_Sections_CoursesAttended_coursesAttended.tr(),
                current: achievementsSummeryModel.courses ?? 0,
                total: achievementsSummeryModel.coursesCount ?? 0,
                progressColor: Colors.pink,
              );
              return state.maybeWhen(
                fetchAchievemenetsSummeryLoading: () =>
                    AchievementsProgressIndicatorLoading(
                  title: LocaleKeys
                          .Achievements_Sections_CoursesAttended_coursesAttended
                      .tr(),
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
          BlocBuilder<AchievementsCubit, AchievementsState>(
            buildWhen: (previous, current) {
              return context
                  .read<AchievementsCubit>()
                  .buildBadgesWhen(previous, current, AppUrl.kCourses);
            },
            builder: (context, state) {
              state.whenOrNull(
                fetchBadgesSuccess: (data, message) {
                  badges = data;
                },
              );
              return context.read<AchievementsCubit>().buildBadges(
                    context: context,
                    state: state,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: badges.length,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemBuilder: (context, index) => TrackedBadge(
                        badgeModel: badges[index],
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
