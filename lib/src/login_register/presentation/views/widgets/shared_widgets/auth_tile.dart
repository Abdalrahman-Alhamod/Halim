import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class AuthTile extends StatelessWidget {
  const AuthTile({
    super.key,
    required this.icon,
  });
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: context.isDarkMode
            ? AppColors.loginWithButtonDarkColor
            : Colors.grey.shade100,
        elevation: 0.0,
        fixedSize: const Size(90, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
      ),
      child: icon,
    );
  }
}
