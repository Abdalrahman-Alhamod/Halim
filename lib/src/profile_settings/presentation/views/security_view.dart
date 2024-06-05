
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import 'widget/settings_widget.dart';

class SecurityView extends StatefulWidget {
  const SecurityView({super.key});

  @override
  SecurityViewState createState() => SecurityViewState();
}

class SecurityViewState extends State<SecurityView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Settings_Security_security.tr(),
          style: TextStyle(
              color: MediaQuery.of(context).platformBrightness ==
                      Brightness.dark
                  ? Colors.white
                  : Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 20),
          SettingsWidget(
              name: LocaleKeys.Settings_Security_changePass.tr(),
              icon: Icons.notifications_active,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSendCode);
              },
            ),
          ],
        ),
      ),
    );
  }
}
