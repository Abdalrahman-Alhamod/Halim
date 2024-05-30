import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';

dynamic getSliderTheme(BuildContext context) {
  return SliderTheme.of(context).copyWith(
    valueIndicatorTextStyle: TextStyle(
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
        RectangularRangeSliderValueIndicatorShape(), // Default value indicator shape
    showValueIndicator: ShowValueIndicator.always,
  );
}
