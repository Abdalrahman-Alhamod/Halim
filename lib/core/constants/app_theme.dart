import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_font.dart';
import 'package:halim/core/constants/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';

ThemeData getThemeData(BuildContext context) {
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: AppColors.primaryColor,
  );
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    fontFamily: context.isEnglish ? AppFonts.urbanist : AppFonts.tajawal,
    brightness: Brightness.light,
    colorScheme: colorScheme,
  );
}
