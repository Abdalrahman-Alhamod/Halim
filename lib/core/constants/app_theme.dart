import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halim/core/constants/app_colors.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  primaryColor: AppColors.primaryColor,
  useMaterial3: true,
  textTheme: GoogleFonts.urbanistTextTheme(),
);
