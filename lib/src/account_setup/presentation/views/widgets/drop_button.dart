import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';

// ignore: must_be_immutable
class DropdownButtonField extends StatelessWidget {
  final List<DropdownMenuItem<String>>? items;

  final ValueChanged<String?>? onChanged;
  final List<String> optionsone = ['Male', 'Female'];
  String? _selectedOption;

  DropdownButtonField({
    super.key,
    this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width * 0.05,
          right: screenSize.width * 0.05,
          bottom: screenSize.width * 0.0,
          top: screenSize.width * 0.07),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: "Gender",
          hintStyle: TextStyle(
            fontSize: 14,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.lightFlatButtonColor
                : AppColors.darkFlatButtonColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(width: 0.5, style: BorderStyle.none),
          ),
          filled: true,
          fillColor:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? AppColors.darkFlatButtonColor
                  : AppColors.lightFlatButtonColor,
        ),
        value: _selectedOption,
        onChanged: onChanged,
        items: optionsone.map((String option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        menuMaxHeight: 125,
        dropdownColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.darkFlatButtonColor
                : AppColors.lightFlatButtonColor,
        elevation: 1,
        borderRadius: BorderRadius.circular(25),
        style: TextStyle(
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.lightFlatButtonColor
                : AppColors.darkFlatButtonColor,
            fontSize: 14,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
