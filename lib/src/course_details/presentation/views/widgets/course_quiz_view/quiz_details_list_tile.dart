import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class QuizDetailsListTile extends StatelessWidget {
  const QuizDetailsListTile({
    super.key,
    required this.icon,
    required this.label,
    required this.description,
    this.descriptionColor,
  });
  final IconData icon;
  final String label;
  final String description;
  final Color? descriptionColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 36,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$label:',
          style: TextStyle(
            fontSize: 18,
            color: context.isDarkMode ? Colors.grey : Colors.grey.shade600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 18,
            color: descriptionColor,
          ),
        ),
      ],
    );
  }
}
