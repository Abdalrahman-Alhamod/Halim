import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/widgets/custom_elevated_button_with_icon.dart';

class MentorMainSectionButton extends StatelessWidget {
  const MentorMainSectionButton({
    super.key,
    required this.onPressed,
    required this.svgPicture,
    required this.title,
    this.isOutlined = false,
  });
  final void Function() onPressed;
  final String svgPicture;
  final String title;
  final bool isOutlined;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButtonWithIcon(
      backgroundColor: isOutlined
          ? Theme.of(context).colorScheme.background
          : AppColors.primaryColor,
      onPressed: onPressed,
      icon: SvgPicture.asset(
        svgPicture,
        color: isOutlined ? AppColors.primaryColor : Colors.white,
        width: 24,
      ),
      label: Text(
        title,
        style: TextStyle(
          color: isOutlined ? AppColors.primaryColor : Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: 0.0,
    );
  }
}
