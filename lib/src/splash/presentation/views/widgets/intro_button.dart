import 'package:flutter/material.dart';
import 'package:halim/core/widgets/custome_elevated_button.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({
    super.key,
    required this.controller,
    required this.title,
  });

  final PageController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      title: title,
    );
  }
}
