import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/local_keys.g.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.groups,
              color: AppColors.primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '9,839 ${LocaleKeys.CourseDetails_students.tr()}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.watch_later,
              color: AppColors.primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '2,5 ${LocaleKeys.CourseDetails_hours.tr()}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Transform.flip(
              flipY: true,
              child: const Icon(
                Icons.article,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              LocaleKeys.CourseDetails_certificate.tr(),
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
