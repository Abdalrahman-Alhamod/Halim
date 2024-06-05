import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

// ignore: must_be_immutable
class SettingsWidget extends StatelessWidget {
  final String name;
  final Color? color;
  VoidCallback onPressed;
  final IconData? icon;

  SettingsWidget(
      {required this.name,  this.icon, required this.onPressed,  this.color});

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
            width: 20,
          ),
          Icon(
            icon,
            size: 28,
            color: color
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    size: 28,
                    Icons.chevron_right,
                    color: color,
                  ),
                  onPressed: onPressed,
                ),
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
