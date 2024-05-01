import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 60,
    this.isEnabled = true,
  });
  final void Function() onPressed;
  final String title;
  final double width;
  final double height;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.black,
        disabledBackgroundColor: AppColors.disabledButtonColor,
        shadowColor: AppColors.primaryColor,
        maximumSize: const Size(550, 100),
        fixedSize: Size(width, height),
        elevation: 15,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
