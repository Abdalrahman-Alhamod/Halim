import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/helpers/string_helper.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class QuizGradeListTile extends StatelessWidget {
  const QuizGradeListTile({
    super.key,
    this.grade,
  });
  final num? grade;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.percent,
          size: 36,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '${LocaleKeys.CourseDetails_Quiz_grade.tr()}:',
          style: TextStyle(
            fontSize: 18,
            color: context.isDarkMode ? Colors.grey : Colors.grey.shade600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          grade != null ? '${StringHelper.formatNum(grade!)}%' : '--%',
          style: TextStyle(
            fontSize: 18,
            color: grade == null
                ? context.isDarkMode
                    ? Colors.grey.shade200
                    : Colors.grey.shade600
                : grade! < 80
                    ? Colors.red
                    : Colors.green,
          ),
        ),
      ],
    );
  }
}
