import 'package:flutter/material.dart';
import 'package:halim/core/constants/app_constrains.dart';

import '../themes/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 60,
    this.isEnabled = true,
    this.elevation = 10,
    this.backgroundColor = AppColors.primaryColor,
  });
  final void Function()? onPressed;
  final String title;
  final double width;
  final double height;
  final bool isEnabled;
  final double elevation;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.black,
        disabledBackgroundColor: AppColors.disabledButtonColor,
        shadowColor: AppColors.primaryColor,
        maximumSize: const Size(
          AppConstrains.maxWidth,
          AppConstrains.maxHeight,
        ),
        fixedSize: Size(width, height),
        elevation: elevation,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
