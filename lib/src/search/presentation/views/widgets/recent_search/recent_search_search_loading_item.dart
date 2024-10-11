import 'package:flutter/material.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/widgets/shimmer_base.dart';

class RecentSearchLoadingItem extends StatelessWidget {
  const RecentSearchLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerBase(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      ),
    );
  }
}
