import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var autoSizeGroup = AutoSizeGroup();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Row(
            children: [
              const Flexible(
                flex: 1,
                child: Icon(
                  Icons.groups,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 5,
                child: AutoSizeText(
                  '9,839 ${LocaleKeys.CourseDetails_students.tr()}',
                  style: const TextStyle(fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  group: autoSizeGroup,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: Row(
            children: [
              const Flexible(
                flex: 1,
                child: Icon(
                  Icons.watch_later,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 5,
                child: AutoSizeText(
                  '2,5 ${LocaleKeys.CourseDetails_hours.tr()}',
                  style: const TextStyle(fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  group: autoSizeGroup,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Row(
            children: [
              const Flexible(
                flex: 1,
                child: Icon(
                  Icons.signal_cellular_alt,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 5,
                child: AutoSizeText(
                  LocaleKeys.CourseDetails_Level_beginner.tr(),
                  style: const TextStyle(fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  group: autoSizeGroup,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
