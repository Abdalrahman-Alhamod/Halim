
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({
    super.key,
    required this.controller,
    required this.title,
  });

  final PageController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(
          vertical: 18,
        ),
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