import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/profile_settings/presentation/views/functions/log_out_bottom_sheet.dart';
import 'package:halim/src/profile_settings/presentation/views/widget/filterToggleButtonWithIcon.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import 'widget/settings_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  SettingsViewState createState() => SettingsViewState();
}

class SettingsViewState extends State<SettingsView> {
  late ImageServices _imageServices;

  File? get imageFile => _imageServices.imageFile;

  @override
  void initState() {
    super.initState();
    _imageServices = ImageServices(this, refresh);
  }

  void refresh() {
    setState(() {});
  }

  void _handleToggle(bool isActive) {
    print("Filter is ${isActive ? "Active" : "Inactive"}");
  }

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
              'Settings',
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
              name: 'Edit Profile',
              icon: Icons.person,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kEditProfile);
              },
            ),
            SettingsWidget(
              name: 'Notification',
              icon: Icons.notifications_active,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kNotificationSettingsView);
              },
            ),
            SettingsWidget(
              name: 'Security',
              icon: Icons.security,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSecurityView);
              },
            ),
            SettingsWidget(
              name: 'Payment',
              icon: Icons.payment,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kHome);
              },
            ),
            SettingsWidget(
              name: 'Language',
              icon: Icons.language,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kLanguageSettingsView);
              },
            ),
            FilterToggleButtonWithIcon(
              filterName: 'Dark Mode',
              fun: (p0) {},
              icon: Icons.remove_red_eye,
            ),
            SettingsWidget(
              name: 'Privacy Policy',
              icon: Icons.privacy_tip_rounded,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kHome);
              },
            ),
            SettingsWidget(
              name: 'Help Center',
              icon: Icons.help_outlined,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kHome);
              },
            ),
            SettingsWidget(
              name: 'Logout',
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
