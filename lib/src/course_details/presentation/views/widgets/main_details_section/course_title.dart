import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_text_styles.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.CourseDetails_Test_courseTitle.tr(),
      style: context.isEnglish
          ? AppTextStyles.largeTitle
          : AppTextStyles.largeTitle.copyWith(fontSize: 20),
    );
  }
}
