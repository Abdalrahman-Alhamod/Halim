
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';

class StoreSectionButton extends StatelessWidget {
  const StoreSectionButton({super.key, 
    required this.isPressed,
    required this.onPressed,
    required this.label,
  });
  final bool isPressed;
  final void Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor:
            isPressed ? AppColors.primaryColor : Colors.transparent,
        side: const BorderSide(
          color: AppColors.primaryColor,
          width: 3,
        ),
        padding: EdgeInsets.zero,
        minimumSize: const Size(
          double.infinity,
          55,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: isPressed ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
