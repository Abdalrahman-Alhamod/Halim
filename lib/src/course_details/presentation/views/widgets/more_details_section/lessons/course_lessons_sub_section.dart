import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';

import '../../../../../../../core/themes/app_colors.dart';
import 'expand_view/expand_child_widget.dart';

class CourseLessonsSubSection extends StatelessWidget {
  const CourseLessonsSubSection({
    super.key,
    required this.title,
    required this.duration,
    required this.widgets,
    required this.description,
  });
  final String title;
  final String description;
  final int duration;
  final List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '$duration ${LocaleKeys.CourseDetails_Lessons_min.tr()}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(description),
        const SizedBox(
          height: 20,
        ),
        ExpandChildWidget(
          child: Column(
            children: widgets,
          ),
        )
      ],
    );
  }
}
