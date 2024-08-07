import 'package:flutter/material.dart';
import '../../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../../core/themes/app_colors.dart';

class ReviewsStarsButton extends StatelessWidget {
  const ReviewsStarsButton({
    super.key,
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
      ),
      child: Padding(
        padding: context.isEnglish
            ? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10)
            : const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10,
                bottom: 6,
              ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: context.isEnglish
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.star,
              color: isPressed ? Colors.white : AppColors.primaryColor,
              size: 22,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isPressed ? Colors.white : AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
