import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  AppTextStyles._();
  static const extraLargeTitle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const largeTitle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
}
