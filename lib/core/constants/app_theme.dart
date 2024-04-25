import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_font.dart';
import 'package:halim/core/constants/app_colors.dart';

final ColorScheme colorScheme = const ColorScheme.light().copyWith(
  primary: AppColors.primaryColor,
);
final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  fontFamily: AppFonts.urbanist,
  brightness: Brightness.light,
  colorScheme: colorScheme,
);
