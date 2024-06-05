import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.width = double.infinity,
      this.height = double.infinity,
      this.isEnabled = true,
      this.kBackgroundcolor = AppColors.primaryColor,
      this.kTextcolor});
  final void Function() onPressed;
  final String title;
  final Color kBackgroundcolor;
  final Color? kTextcolor;
  final double width;
  final double height;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: kBackgroundcolor,
        //foregroundColor: Colors.black,
        //disabledBackgroundColor: AppColors.disabledButtonColor,
        //shadowColor: AppColors.primaryColor,
        fixedSize: Size(width, height),
        elevation: 0,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: kTextcolor,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
