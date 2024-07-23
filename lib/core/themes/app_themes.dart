import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../assets/app_font.dart';
import 'app_colors.dart';

abstract final class AppThemes {
  AppThemes._();
  static ThemeData getDarkThemeData(BuildContext context) {
    return ThemeData(
      colorScheme: const ColorScheme.dark().copyWith(
        primary: AppColors.primaryColor,
        secondary: AppColors.primaryColor.withAlpha(230),
      ),
      scaffoldBackgroundColor: AppColors.darkColor,
      fontFamily: context.isEnglish ? AppFonts.urbanist : AppFonts.tajawal,
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkFlatButtonColor,
        ),
      ),
      sliderTheme: _getSliderTheme(context),
      useMaterial3: true,
    );
  }

  static SliderThemeData _getSliderTheme(BuildContext context) {
    return SliderTheme.of(context).copyWith(
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12, // Smaller text size
      ),
      valueIndicatorColor: AppColors.primaryColor, // Custom color for the label
      activeTrackColor: AppColors.primaryColor,
      inactiveTrackColor:
          context.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade400,
      thumbColor: AppColors.primaryColor,
      overlayColor: AppColors.primaryColor.withOpacity(0.1),
      rangeValueIndicatorShape:
          const RectangularRangeSliderValueIndicatorShape(), // Default value indicator shape
      showValueIndicator: ShowValueIndicator.always,
    );
  }

  static ThemeData getLightThemeData(BuildContext context) {
    return ThemeData(
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.primaryColor,
        secondary: AppColors.primaryColor.withAlpha(230),
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: AppColors.primaryColor,
      fontFamily: context.isEnglish ? AppFonts.urbanist : AppFonts.tajawal,
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightFlatButtonColor,
        ),
      ),
      sliderTheme: _getSliderTheme(context),
      useMaterial3: true,
    );
  }
}
