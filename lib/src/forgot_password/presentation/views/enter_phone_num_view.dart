import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/context_extensions.dart';
import 'widget/enter_phone_body.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';

class EnterPhoneNumView extends StatefulWidget {
  const EnterPhoneNumView({super.key});

  @override
  State<EnterPhoneNumView> createState() => _EnterPhoneNumViewState();
}

class _EnterPhoneNumViewState extends State<EnterPhoneNumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(
            LocaleKeys.ForgotPassword_EnterPhone_EnterPhoneNum.tr(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
        ),
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        body: const EnterPhoneBody());
  }
}
