import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/constants/app_constrains.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../../core/themes/app_colors.dart';

class CommentTextField extends StatefulWidget {
  const CommentTextField({
    super.key,
    required this.onSendPressed,
  });
  final void Function(String comment) onSendPressed;
  @override
  State<CommentTextField> createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends State<CommentTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    _controller = TextEditingController();
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
    return TextField(
      focusNode: _focusNode,
      cursorColor: Theme.of(context).colorScheme.inverseSurface,
      cursorOpacityAnimates: true,
      controller: _controller,
      onTapOutside: (event) {
        _focusNode.unfocus();
      },
      onChanged: (value) {
        setState(() {});
      },
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        // height: 1,
      ),
      decoration: InputDecoration(
        fillColor: context.isDarkMode
            ? _isFocused
                ? AppColors.primaryColor.withAlpha(20)
                : AppColors.loginWithButtonDarkColor
            : _isFocused
                ? AppColors.primaryColor.withAlpha(30)
                : Colors.grey.shade200,
        suffixIcon: IconButton(
          onPressed: _controller.text.isEmpty
              ? null
              : () {
                  widget.onSendPressed.call(_controller.text);
                  _controller.clear();
                },
          icon: Icon(Icons.send),
          padding: EdgeInsets.all(16),
        ),
        suffixIconColor:
            _isFocused ? AppColors.primaryColor : Colors.grey.shade500,
        hintText: LocaleKeys.CourseDetails_Community_enterComment.tr(),
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
    );
  }
}
