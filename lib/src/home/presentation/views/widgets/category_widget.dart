import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';

class CategoryWidget extends StatefulWidget {
  final String category;

  const CategoryWidget(this.category, {super.key});

  @override
  CategoryWidgetState createState() => CategoryWidgetState();
}

class CategoryWidgetState extends State<CategoryWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primaryColor
                  : MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? Colors.white
                      : AppColors.darkFlatButtonColor,
              borderRadius: BorderRadius.circular(20.0),
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
