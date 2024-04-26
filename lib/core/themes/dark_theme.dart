import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../assets/app_font.dart';
import '../constants/app_colors.dart';

ThemeData getDarkThemeData(BuildContext context) {
  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: AppColors.primaryColor,
    secondary: AppColors.primaryColor.withAlpha(230),
    background: const Color(0xff181A20),
  );
  return ThemeData(
    colorScheme: colorScheme,
    fontFamily: context.isEnglish ? AppFonts.urbanist : AppFonts.tajawal,
    brightness: Brightness.dark,
  );
}
