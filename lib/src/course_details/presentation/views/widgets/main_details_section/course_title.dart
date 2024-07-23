import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_text_styles.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      LocaleKeys.CourseDetails_Test_courseTitle.tr(),
      style: context.isEnglish
          ? AppTextStyles.largeTitle.copyWith(fontSize: 28)
          : AppTextStyles.largeTitle.copyWith(fontSize: 20),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
