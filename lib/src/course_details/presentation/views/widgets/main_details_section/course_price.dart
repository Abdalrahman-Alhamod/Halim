import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class CoursePrice extends StatelessWidget {
  const CoursePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '\$40',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '\$75',
          style: TextStyle(
            fontSize: 24,
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade500,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.lineThrough,
          ),
        )
      ],
    );
  }
}
