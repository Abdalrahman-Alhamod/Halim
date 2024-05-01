import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../assets/app_font.dart';
import 'app_colors.dart';

ThemeData getDarkThemeData(BuildContext context) {
  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: AppColors.primaryColor,
    secondary: AppColors.primaryColor.withAlpha(230),
    background: AppColors.darkColor,
  );
  return ThemeData(
    colorScheme: colorScheme,
    fontFamily: context.isEnglish ? AppFonts.urbanist : AppFonts.tajawal,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkFlatButtonColor,
      ),
    ),
  );
}
