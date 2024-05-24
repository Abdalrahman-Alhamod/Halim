import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../../core/translations/local_keys.g.dart';

class PhoneNumberInputScreen extends StatefulWidget {
  const PhoneNumberInputScreen({super.key});

  @override
  PhoneNumberInputScreenState createState() => PhoneNumberInputScreenState();
}

class PhoneNumberInputScreenState extends State<PhoneNumberInputScreen> {
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'SY');
  TextEditingController controller = TextEditingController();
  bool isValid = true;
  bool _isFocused = false;
  late FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InternationalPhoneNumberInput(
        focusNode: _focusNode,
        onInputChanged: (PhoneNumber number) {
          // ignore: avoid_print
          print(number.phoneNumber);
        },
        onInputValidated: (bool value) {
          setState(() {
            isValid = value;
          });
          // ignore: avoid_print
          print(value ? 'Valid' : 'Invalid');
        },
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.DIALOG,
        ),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        selectorTextStyle: TextStyle(
          color: context.isDarkMode ? Colors.white : Colors.black,
        ),
        initialValue: phoneNumber,
        textFieldController: controller,
        formatInput: false,
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputDecoration: InputDecoration(
          hintText: LocaleKeys.FillYourProfile_phone.tr(),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: context.isDarkMode
                ? Colors.grey.shade500
                : Colors.grey.shade700,
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
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
        onSaved: (PhoneNumber number) {
          // ignore: avoid_print
          print('On Saved: $number');
        },
      ),
    );
  }
}
