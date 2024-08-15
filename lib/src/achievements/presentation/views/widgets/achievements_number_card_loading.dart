import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/shimmer_box.dart';

class AchievementsNumberCardLoading extends StatelessWidget {
  const AchievementsNumberCardLoading({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : AppColors.primaryColor.withAlpha(20),
          border: Border.symmetric(
            vertical: BorderSide(
              color: context.isDarkMode
                  ? AppColors.darkColor
                  : AppColors.primaryColor.withAlpha(30),
              width: 1,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ShimmerBox(
              height: 36,
              width: context.width * 0.3,
            )
          ],
        ),
      ),
    );
  }
}
