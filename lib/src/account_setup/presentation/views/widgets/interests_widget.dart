import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class InterestsWidget extends StatefulWidget {
  final String category;

  const InterestsWidget(this.category, {super.key});

  @override
  InterestsWidgetState createState() => InterestsWidgetState();
}

class InterestsWidgetState extends State<InterestsWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0.0),
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primaryColor
                  : !context.isDarkMode
                      ? Colors.white
                      : AppColors.darkFlatButtonColor,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: isSelected
                    ? AppColors.primaryColor
                    : Colors.blue.withOpacity(0.9),
                width: 2,
              ),
            ),
            child: Text(
              widget.category,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.blue.withOpacity(0.9),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
