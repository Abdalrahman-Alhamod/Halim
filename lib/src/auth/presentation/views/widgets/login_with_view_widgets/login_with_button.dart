import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class LoginWithButton extends StatelessWidget {
  const LoginWithButton({
    super.key,
    required this.icon,
    required this.label, required this.onPressed,
  });
  final Widget icon;
  final String label;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.isDarkMode
            ? AppColors.loginWithButtonDarkColor
            : Colors.grey.shade100,
        elevation: 0.0,
        fixedSize: const Size(380, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
      ),
      icon: icon,
      label: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.inverseSurface,
        ),
      ),
    );
  }
}
