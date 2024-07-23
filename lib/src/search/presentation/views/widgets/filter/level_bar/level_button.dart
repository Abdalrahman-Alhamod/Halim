import 'package:flutter/material.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../../core/themes/app_colors.dart';
import 'data/level_bar_item.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
    required this.isPressed,
    required this.onPressed,
    required this.type,
    required this.label,
  });
  final bool isPressed;
  final void Function()? onPressed;
  final String label;
  final Level type;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: isPressed
            ? switch (type) {
                Level.all => AppColors.primaryColor,
                Level.begginer => Colors.green,
                Level.intermediate => Colors.orange,
                Level.advanced => Colors.red,
              }
            : Colors.transparent,
        side: BorderSide(
          color: switch (type) {
            Level.all => AppColors.primaryColor,
            Level.begginer => Colors.green,
            Level.intermediate => Colors.orange,
            Level.advanced => Colors.red,
          },
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
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isPressed
                    ? Colors.white
                    : switch (type) {
                        Level.all => AppColors.primaryColor,
                        Level.begginer => Colors.green,
                        Level.intermediate => Colors.orange,
                        Level.advanced => Colors.red,
                      },
              ),
            )
          ],
        ),
      ),
    );
  }
}
