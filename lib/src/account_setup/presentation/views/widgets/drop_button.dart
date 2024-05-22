import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

// ignore: must_be_immutable
class DropdownButtonField extends StatelessWidget {
  final List<DropdownMenuItem<String>>? items;

  final ValueChanged<String?>? onChanged;
  final List<String> optionsone = [
    LocaleKeys.FillYourProfile_Gender_male.tr(),
      LocaleKeys.FillYourProfile_Gender_Female.tr(),];
  String? _selectedOption;

  DropdownButtonField({
    super.key,
    this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: LocaleKeys.FillYourProfile_gender.tr(),
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
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
              context.isDarkMode
                  ? AppColors.loginWithButtonDarkColor
                  : AppColors.textFieldColor,
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
        alignment: Alignment.center,
        dropdownColor:
            context.isDarkMode
                ? AppColors.loginWithButtonDarkColor
                : AppColors.textFieldColor,
        elevation: 1,
        borderRadius: BorderRadius.circular(25),
        style: TextStyle(
          color: context.isDarkMode
              ? Colors.grey.shade500
              : AppColors.darkFlatButtonColor,
          fontSize: 14,
           fontFamily: '',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
