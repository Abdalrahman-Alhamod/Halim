import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 1,
          child: Divider(
            thickness: 1,
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(title),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          flex: 1,
          child: Divider(
            thickness: 1,
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
