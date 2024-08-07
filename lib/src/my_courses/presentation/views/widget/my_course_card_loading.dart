import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/shimmer_box.dart';

class MyCourseCardLoading extends StatelessWidget {
  const MyCourseCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.isDarkMode
        ? AppColors.loginWithButtonDarkColor
        : AppColors.lightFlatButtonColor;
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(32),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          ShimmerBox(
            width: 110,
            height: 110,
            radius: 24,
            color: color,
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 2,
                ),
                ShimmerBox(
                  height: 18,
                  color: color,
                ),
                const Spacer(
                  flex: 1,
                ),
                ShimmerBox(
                  width: context.width * 0.4,
                  height: 14,
                  color: color,
                ),
                const Spacer(
                  flex: 1,
                ),
                ShimmerBox(
                  height: 20,
                  color: color,
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
