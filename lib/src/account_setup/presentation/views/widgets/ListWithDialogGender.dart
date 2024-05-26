import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class ListWithDialogGender extends StatefulWidget {
  const ListWithDialogGender({super.key});

  @override
  ListWithDialogGenderState createState() => ListWithDialogGenderState();
}

class ListWithDialogGenderState extends State<ListWithDialogGender> {
  TextEditingController controller = TextEditingController();
  bool _isFocused = false;
  late FocusNode _focusNode;
  final List<String> options = [
    //        LocaleKeys.CourseDetails_Test_courseTitle.tr(),

    LocaleKeys.FillYourProfile_Gender_male.tr(),
    LocaleKeys.FillYourProfile_Gender_female.tr()
  ];
  List<String> filteredOptions = [];

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    filteredOptions = options;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              content: Container(
                width: double.maxFinite,
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredOptions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(filteredOptions[index]),
                      onTap: () {
                        setState(() {
                          controller.text = filteredOptions[index];
                        });
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: controller,
        focusNode: _focusNode,
        readOnly: true,
        onTap: _showDialog,
        decoration: InputDecoration(
          hintText: LocaleKeys.FillYourProfile_gender.tr(),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.grey.shade500
                : Colors.grey.shade700,
          ),
          suffixIcon: Icon(
            Icons.arrow_drop_down_rounded,
            size: 30,
          ),
          filled: true,
          fillColor: context.isDarkMode
              ? _isFocused
                  ? AppColors.primaryColor.withAlpha(20)
                  : AppColors.loginWithButtonDarkColor
              : _isFocused
                  ? AppColors.primaryColor.withAlpha(30)
                  : AppColors.textFieldColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
