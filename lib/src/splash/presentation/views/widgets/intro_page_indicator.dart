import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/themes/app_colors.dart';

class IntroPageIndicator extends StatelessWidget {
  const IntroPageIndicator({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      onDotClicked: (index) {
        _controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      effect: const ExpandingDotsEffect(
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: AppColors.primaryColor,
      ),
    );
  }
}
