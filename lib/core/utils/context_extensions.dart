import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart' as easy_localization;

extension ContextExtensions on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  bool get isEnglish => locale.languageCode == 'en';
}
