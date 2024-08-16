import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/assets/app_images.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 2,
        ),
        Center(
          child: Image.asset(
            AppImages.logo,
            width: context.width * 0.8,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        const CustomLoadingIndicator(
          size: 75,
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
