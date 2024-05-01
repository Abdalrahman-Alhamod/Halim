import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_font.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';

ThemeData getLightThemeData(BuildContext context) {
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: AppColors.primaryColor,
      secondary: AppColors.primaryColor.withAlpha(230),
      background: Colors.white);
  return ThemeData(
    colorScheme: colorScheme,
    fontFamily: context.isEnglish ? AppFonts.urbanist : AppFonts.tajawal,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightFlatButtonColor,
      ),
    ),
  );
}
