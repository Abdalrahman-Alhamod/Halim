import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:halim/core/translations/local_keys.g.dart';

import '../../../../../../core/themes/app_colors.dart';

class CourseCategoryBox extends StatelessWidget {
  const CourseCategoryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withAlpha(20),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Text(
          LocaleKeys.CourseDetails_Test_courseCategory.tr(),
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
