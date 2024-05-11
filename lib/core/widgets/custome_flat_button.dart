import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 60,
  });
  final void Function() onPressed;
  final String title;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        maximumSize: const Size(550, 100),
        fixedSize: Size(width, height),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? Colors.white
              : AppColors.primaryColor,
        ),
      ),
    );
  }
}
