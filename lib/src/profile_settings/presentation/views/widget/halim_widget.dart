import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

// ignore: must_be_immutable
class HalimWidget extends StatelessWidget {
  final String name;
  final Color? color;
  VoidCallback onPressed;
  final IconData? icon;

  HalimWidget(
      {required this.name, this.icon, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: 55,
      color: context.isDarkMode ? AppColors.darkColor : Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 23,
          ),
          Image.asset(
            AppImages.logoWhite,
            width: 23,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          SizedBox(
            width: 23,
          ),
          Expanded(
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: context.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                IconButton(
                    icon: Icon(
                      size: 28,
                      Icons.chevron_right,
                      color: context.isDarkMode ? Colors.white : Colors.black,
                    ),
                    onPressed: onPressed),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
