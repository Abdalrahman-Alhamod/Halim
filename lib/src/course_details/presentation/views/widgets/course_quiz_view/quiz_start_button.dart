import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class QuizStartButton extends StatelessWidget {
  const QuizStartButton({super.key, required this.onPressed});

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          disabledBackgroundColor: AppColors.disabledButtonColor,
          shadowColor: AppColors.primaryColor,
          fixedSize: Size(200, 200),
          backgroundColor: AppColors.primaryColor,
          elevation: 20,
        ),
        onPressed: onPressed,
        child: Text(
          LocaleKeys.CourseDetails_Quiz_start.tr(),
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
