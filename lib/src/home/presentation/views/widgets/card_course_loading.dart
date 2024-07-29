import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/widgets/shimmer_box.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourseLoading extends StatelessWidget {
  const CardCourseLoading({
    super.key,
  });

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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ShimmerBox(
              width: 110,
              height: 110,
              radius: 24,
              color: color,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerBox(
                    width: 100,
                    height: 20,
                    color: color,
                  ),
                  ShimmerBox(
                    height: 20,
                    color: color,
                  ),
                  ShimmerBox(
                    width: 60,
                    height: 20,
                    color: color,
                  ),
                  ShimmerBox(
                    height: 20,
                    color: color,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
