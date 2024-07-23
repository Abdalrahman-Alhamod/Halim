import 'package:flutter/material.dart';
import '../utils/context_extensions.dart';

import '../themes/app_colors.dart';

showCustomDialog({required BuildContext context, required Widget widget}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.loginWithButtonDarkColor
                : Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(16),
          child: widget,
        ),
      );
    },
    barrierDismissible: true,
    barrierColor: const Color.fromARGB(255, 0, 5, 23).withAlpha(150),
  );
}
