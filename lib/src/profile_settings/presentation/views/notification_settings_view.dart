
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'widget/Filter_toggle_button.dart';

class NotificationSettingsView extends StatefulWidget {
  const NotificationSettingsView({super.key});

  @override
  NotificationSettingsViewState createState() => NotificationSettingsViewState();
}

class NotificationSettingsViewState extends State<NotificationSettingsView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Settings_Notifications_notifications.tr(),
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
            FilterToggleButton(filterName: LocaleKeys.Settings_Notifications_generalNotifications.tr(),fun: (p0){},),
            FilterToggleButton(filterName: LocaleKeys.Settings_Notifications_sound.tr(),fun: (p0){},),
            //FilterToggleButton(filterName: 'Vibrate',fun: (p0){},),
          ],
        ),
      ),
    );
  }
}
