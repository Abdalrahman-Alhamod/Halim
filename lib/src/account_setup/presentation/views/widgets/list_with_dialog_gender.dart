import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class ListWithDialogGender extends StatefulWidget {
  final Function(String) onGenderSelected;
  const ListWithDialogGender(
      {super.key, required this.onGenderSelected, required this.hintText});
  final String hintText;
  @override
  ListWithDialogGenderState createState() => ListWithDialogGenderState();
}

class ListWithDialogGenderState extends State<ListWithDialogGender> {
  TextEditingController controller = TextEditingController();
  bool _isFocused = false;
  late FocusNode _focusNode;
  final List<String> options = [
    LocaleKeys.FillYourProfile_Gender_male1.tr(),
    LocaleKeys.FillYourProfile_Gender_female1.tr()
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
              content: SizedBox(
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
                        widget.onGenderSelected(filteredOptions[index]);
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
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        focusNode: _focusNode,
        readOnly: true,
        onTap: _showDialog,
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: context.isDarkMode
                ? Colors.grey.shade500
                : Colors.grey.shade700,
          ),
          suffixIcon: const Icon(
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
