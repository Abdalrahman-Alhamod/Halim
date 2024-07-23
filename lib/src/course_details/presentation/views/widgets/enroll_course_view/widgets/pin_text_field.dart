import 'package:flutter/material.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/themes/app_colors.dart';

class PinTextField extends StatefulWidget {
  const PinTextField({
    super.key,
    required this.onChanged,
    required this.controller,
    this.obsecureText = false,
  });
  final void Function(String value) onChanged;
  final TextEditingController controller;
  final bool obsecureText;
  @override
  State<PinTextField> createState() => _PinTextFieldState();
}

class _PinTextFieldState extends State<PinTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    super.initState();
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
    return SizedBox.square(
      dimension: 60,
      child: TextField(
        cursorColor: context.isDarkMode
            ? AppColors.lightFlatButtonColor
            : AppColors.darkFlatButtonColor,
        style: TextStyle(
          color: context.isDarkMode
              ? AppColors.lightFlatButtonColor
              : AppColors.darkFlatButtonColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        cursorOpacityAnimates: true,
        controller: widget.controller,
        obscureText: widget.obsecureText,
        maxLength: 1,
        focusNode: _focusNode,
        textAlign: TextAlign.center,
        onChanged: widget.onChanged,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.all(0.0),
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red),
          ),
          filled: true,

          fillColor: context.isDarkMode
              ? _isFocused
                  ? AppColors.primaryColor.withAlpha(20)
                  : AppColors.darkFlatButtonColor
              : _isFocused
                  ? AppColors.primaryColor.withAlpha(30)
                  : AppColors.textFieldColor,
        ),
      ),
    );
  }
}
