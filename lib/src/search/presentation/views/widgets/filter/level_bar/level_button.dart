import 'package:flutter/material.dart';
import '../../../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../../core/themes/app_colors.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
    required this.isPressed,
    required this.onPressed,
    required this.value,
    required this.label,
  });
  final bool isPressed;
  final void Function()? onPressed;
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor:
            isPressed ? getColorFromValue(value) : Colors.transparent,
        side: BorderSide(
          color: getColorFromValue(value),
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
                color: isPressed ? Colors.white : getColorFromValue(value),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getColorFromValue(String value) {
    return switch (value) {
      AppUrl.all => AppColors.primaryColor,
      AppUrl.kBeginner => Colors.green,
      AppUrl.kIntermediate => Colors.orange,
      AppUrl.kAdvanced => Colors.red,
      String() => Colors.grey,
    };
  }
}
