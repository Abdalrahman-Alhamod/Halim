import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../domain/entities/quiz_status.dart';

class QuizStatusListTile extends StatelessWidget {
  const QuizStatusListTile({super.key, required this.status});
  final QuizStatus status;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.monitor_heart,
          size: 36,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '${LocaleKeys.CourseDetails_Quiz_status.tr()}:',
          style: TextStyle(
            fontSize: 18,
            color: context.isDarkMode ? Colors.grey : Colors.grey.shade600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: switch (status) {
              QuizStatus.passed => Colors.green,
              QuizStatus.failed => Colors.red,
              QuizStatus.notTaken => context.isDarkMode
                  ? Colors.grey.shade800
                  : Colors.grey.shade600,
            },
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            switch (status) {
              QuizStatus.passed => LocaleKeys.CourseDetails_Quiz_passed.tr(),
              QuizStatus.failed => LocaleKeys.CourseDetails_Quiz_failed.tr(),
              QuizStatus.notTaken => LocaleKeys.CourseDetails_Quiz_notTaken.tr(),
            },
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
