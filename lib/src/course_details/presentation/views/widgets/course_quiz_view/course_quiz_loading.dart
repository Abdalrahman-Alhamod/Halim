import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';
import 'quiz_details_loading_list_tile.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/shimmer_box.dart';
import 'quiz_start_button.dart';

class CourseQuizLoading extends StatelessWidget {
  const CourseQuizLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.pad16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          ShimmerBox(height: 24, width: context.width * 0.8),
          const SizedBox(
            height: 40,
          ),
          QuizDetailsLoadingListTile(
            icon: Icons.help,
            label: LocaleKeys.CourseDetails_Quiz_questions.tr(),
            shimmerWidth: context.width * 0.1,
          ),
          const SizedBox(
            height: 10,
          ),
          QuizDetailsLoadingListTile(
            icon: Icons.monitor_heart,
            label: LocaleKeys.CourseDetails_Quiz_status.tr(),
            shimmerWidth: context.width * 0.3,
            shimmerHeight: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          QuizDetailsLoadingListTile(
            icon: Icons.percent,
            label: LocaleKeys.CourseDetails_Quiz_grade.tr(),
            shimmerWidth: context.width * 0.1,
          ),
          const SizedBox(
            height: 10,
          ),
          QuizDetailsLoadingListTile(
            icon: Icons.date_range,
            label: LocaleKeys.CourseDetails_Quiz_lastAttempt.tr(),
            shimmerWidth: context.width * 0.4,
          ),
          const SizedBox(
            height: 10,
          ),
          QuizDetailsLoadingListTile(
            icon: Icons.warning,
            label: LocaleKeys.CourseDetails_Quiz_limits.tr(),
            shimmerWidth: context.width * 0.5,
          ),
          const SizedBox(
            height: 10,
          ),
          QuizDetailsLoadingListTile(
            icon: Icons.access_time,
            label: LocaleKeys.CourseDetails_Quiz_nextAttempt.tr(),
            shimmerWidth: context.width * 0.4,
          ),
          const Spacer(),
          const QuizStartButton(
            onPressed: null,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
