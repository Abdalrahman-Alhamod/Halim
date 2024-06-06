import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/assets/app_images.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor,
            AppColors.primaryColor.withOpacity(.7),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Center(
            child: Image.asset(
              AppImages.logoWhite,
              width: context.width * 0.4,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const CustomLoadingIndicator(
            color: Colors.white,
            size: 75,
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
