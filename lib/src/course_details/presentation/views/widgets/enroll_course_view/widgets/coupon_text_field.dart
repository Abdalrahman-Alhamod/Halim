import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/constants/app_constrains.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/themes/app_colors.dart';

class CouponTextField extends StatefulWidget {
  const CouponTextField({
    super.key,
  });
  @override
  State<CouponTextField> createState() => _CouponTextFieldState();
}

class _CouponTextFieldState extends State<CouponTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    _controller = TextEditingController();
    final code =
        context.read<CourseDetailsCubit>().courseMainSection?.discount?.code ??
            '';
    _controller.text = code;
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
    return TextFormField(
      focusNode: _focusNode,
      cursorColor: Theme.of(context).colorScheme.inverseSurface,
      cursorOpacityAnimates: true,
      controller: _controller,
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
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: SvgPicture.asset(
            AppSVGs.coupon,
            width: 32,
            colorFilter: ColorFilter.mode(
                _isFocused ? AppColors.primaryColor : Colors.grey.shade500,
                BlendMode.srcIn),
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextButton(
            onPressed: _controller.text.isEmpty
                ? null
                : () {
                    context.read<CourseDetailsCubit>().discountCode =
                        _controller.text;
                    context.read<CourseDetailsCubit>().getCourseCodeDetails();
                  },
            child: Text(
              LocaleKeys.Buttons_apply.tr(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        suffixIconColor:
            _isFocused ? AppColors.primaryColor : Colors.grey.shade500,
        hintText: LocaleKeys.CourseDetails_Enroll_couponCode.tr(),
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
