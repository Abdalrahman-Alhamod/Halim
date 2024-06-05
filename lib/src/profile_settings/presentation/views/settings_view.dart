import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/functions/show_custom_dialog.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/profile_settings/presentation/views/functions/log_out_bottom_sheet.dart';
import 'package:halim/src/profile_settings/presentation/views/widget/filterToggleButtonWithIcon.dart';
import 'package:halim/src/profile_settings/presentation/views/widget/halim_widget.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import 'widget/evaluation_courses_dialog.dart';
import 'widget/settings_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  SettingsViewState createState() => SettingsViewState();
}

class SettingsViewState extends State<SettingsView> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Image.asset(
              AppImages.appLogo,
              width: 35,
              height: 35,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              LocaleKeys.HomePage_Home_NavBar_more.tr(),
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsWidget(
              name: LocaleKeys.Settings_EditProfile_edit.tr(),
              icon: Icons.person,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kEditProfile);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.Settings_Notifications_notifications.tr(),
              icon: Icons.notifications_active,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kNotificationSettingsView);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.Settings_Security_security.tr(),
              icon: Icons.security,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSecurityView);
              },
            ),
            /*SettingsWidget(
              name: 'Payment',
              icon: Icons.payment,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kHome);
              },
            ),*/
            SettingsWidget(
              name: LocaleKeys.Settings_Language_language.tr(),
              icon: Icons.language,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kLanguageSettingsView);
              },
            ),
            FilterToggleButtonWithIcon(
              filterName: LocaleKeys.Settings_dark.tr(),
              fun: (p0) {},
              icon: Icons.remove_red_eye,
            ),
            /*SettingsWidget(
              name: 'Privacy Policy',
              icon: Icons.privacy_tip_rounded,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kHome);
              },
            ),*/
            SettingsWidget(
              name: 'dialog courses test',
              icon: Icons.help_outlined,
              onPressed: () {
                showCustomDialog(
                    context: context, widget: EvaluationCoursesDialog());
              },
            ),
            HalimWidget(name: 'Halim Team', onPressed: (){GoRouter.of(context).push(AppRoute.kDefinitionHalimView);}),
            SettingsWidget(
              name: LocaleKeys.Settings_Logout_logout.tr(),
              icon: Icons.logout_rounded,
              onPressed: () {
                logOutBottomSheet(context);
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
