import 'package:avatar_glow/avatar_glow.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class QuizStartButton extends StatelessWidget {
  const QuizStartButton({super.key, required this.onPressed})
      : _animate = onPressed != null;

  final void Function()? onPressed;
  final bool _animate;
  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: AppColors.primaryColor,
      glowShape: BoxShape.circle,
      animate: _animate,
      curve: Curves.fastOutSlowIn,
      glowCount: 2,
      glowRadiusFactor: 0.3,
      child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            disabledBackgroundColor: AppColors.disabledButtonColor,
            shadowColor: AppColors.primaryColor,
            fixedSize: const Size(200, 200),
            backgroundColor: AppColors.primaryColor,
            elevation: 20,
          ),
          onPressed: onPressed,
          child: Text(
            LocaleKeys.CourseDetails_Quiz_start.tr(),
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
