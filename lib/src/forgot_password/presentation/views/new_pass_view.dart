import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import 'widget/new_pass_body.dart';

import '../../../../core/themes/app_colors.dart';

class NewPassView extends StatefulWidget {
  const NewPassView({super.key});

  @override
  State<NewPassView> createState() => _NewPassViewState();
}

class _NewPassViewState extends State<NewPassView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(
            LocaleKeys.ForgotPassword_change.tr(),
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
        body: const NewPassBody()) ;
  }
}
