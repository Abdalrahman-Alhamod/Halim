import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });
  final String category;
  final bool isSelected;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primaryColor
                  : !context.isDarkMode
                      ? Colors.white
                      : AppColors.loginWithButtonDarkColor,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: AppColors.primaryColor,
                width: 2,
              ),
            ),
            child: Text(
              category,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
