import 'package:flutter/material.dart';

import '../../../../../core/assets/app_images.dart';
import '../../../../../core/themes/app_colors.dart';

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
              width: 150,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          /*const CustomLoadingIndicator(
            color: Colors.white,
            size: 75,
          ),*/
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
