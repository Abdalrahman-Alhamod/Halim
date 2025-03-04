import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInputScreen extends StatefulWidget {
  final Function(String) onPhoneNumberChanged;
  final String hintText;
  const PhoneNumberInputScreen(
      {super.key, required this.onPhoneNumberChanged, required this.hintText});

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
      padding: const EdgeInsets.all(10.0),
      child: InternationalPhoneNumberInput(
        focusNode: _focusNode,
        onInputChanged: (PhoneNumber number) {
          widget.onPhoneNumberChanged(number.phoneNumber!);
        },
        onInputValidated: (bool value) {
          setState(() {
            isValid = value;
          });
        },
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.DIALOG,
        ),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: TextStyle(
          color: context.isDarkMode ? Colors.white : Colors.black,
        ),
        initialValue: phoneNumber,
        textFieldController: controller,
        formatInput: false,
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputDecoration: InputDecoration(
          hintText: widget.hintText,
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
        onSaved: (PhoneNumber number) {},
      ),
    );
  }
}
