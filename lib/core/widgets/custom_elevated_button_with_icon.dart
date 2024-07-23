import 'package:flutter/material.dart';

import '../constants/app_constrains.dart';
import '../themes/app_colors.dart';

class CustomElevatedButtonWithIcon extends StatelessWidget {
  const CustomElevatedButtonWithIcon({
    super.key,
    required this.onPressed,
    this.isEnabled = true,
    this.elevation = 10,
    this.backgroundColor = AppColors.primaryColor,
    required this.icon,
    required this.label,
  });
  final void Function()? onPressed;

  final bool isEnabled;
  final double elevation;
  final Color backgroundColor;
  final Widget icon;
  final Widget label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
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
        // fixedSize: Size(width, height),
        elevation: elevation,
        padding: const EdgeInsets.all(20),
        side: const BorderSide(
          color: AppColors.primaryColor,
          width: 2,
        ),
      ),
      icon: icon,
      label: label,
    );
  }
}
