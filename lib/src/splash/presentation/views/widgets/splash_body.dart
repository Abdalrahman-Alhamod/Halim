import 'package:flutter/material.dart';
import 'package:halim/core/widgets/custom_loading_indicator.dart';

import '../../../../../core/assets/app_images.dart';
import '../../../../../core/constants/app_colors.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
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
              width: 250,
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
