import 'package:flutter/material.dart';
import '../../../../../../core/constants/app_constrains.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.obscureText = false,
      required this.hintText,
      required this.onChanged,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.prefixIcon,
      this.initialValue,
      this.unfocusedFillColor});
  final bool obscureText;
  final String hintText;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final String? initialValue;
  final Color? unfocusedFillColor;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _enableObscureText = false;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    _controller = TextEditingController();
    _enableObscureText = widget.obscureText;
    if (widget.initialValue != null) {
      _controller.text = widget.initialValue!;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
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
      child: TextFormField(
        focusNode: _focusNode,
        obscureText: _enableObscureText,
        cursorColor: Theme.of(context).colorScheme.inverseSurface,
        cursorOpacityAnimates: true,
        onChanged: widget.onChanged,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        controller: _controller,
        style: _enableObscureText && _controller.text != ''
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: '',
                fontSize: 24,
                height: 0.8,
              )
            : const TextStyle(
                fontWeight: FontWeight.w600,
                // height: 1,
              ),
        decoration: InputDecoration(
          fillColor: context.isDarkMode
              ? _isFocused
                  ? AppColors.primaryColor.withAlpha(20)
                  : widget.unfocusedFillColor ??
                      AppColors.loginWithButtonDarkColor
              : _isFocused
                  ? AppColors.primaryColor.withAlpha(30)
                  : widget.unfocusedFillColor ?? AppColors.textFieldColor,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.all(14),
                  child: Icon(
                    widget.prefixIcon,
                  ),
                )
              : null,
          prefixIconColor:
              _isFocused ? AppColors.primaryColor : Colors.grey.shade500,
          suffixIcon: widget.obscureText
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: IconButton(
                    icon: _enableObscureText
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _enableObscureText = !_enableObscureText;
                      });
                    },
                  ),
                )
              : null,
          suffixIconColor:
              _isFocused ? AppColors.primaryColor : Colors.grey.shade500,
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red),
          ),
          filled: true,
          constraints: const BoxConstraints(
            maxWidth: AppConstrains.maxWidth,
          ),
        ),
      ),
    );
  }
}
