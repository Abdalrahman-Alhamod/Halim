
import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/widgets/shimmer_box.dart';

class QuizDetailsLoadingListTile extends StatelessWidget {
  const QuizDetailsLoadingListTile({
    super.key,
    required this.icon,
    required this.label,
    required this.shimmerWidth,
    this.shimmerHeight = 20,
  });
  final IconData icon;
  final String label;
  final double shimmerWidth;
  final double shimmerHeight;
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
        ShimmerBox(
          height: shimmerHeight,
          width: shimmerWidth,
        ),
      ],
    );
  }
}
