import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ChooseYourSpecialty.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ListWithDialogGender.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import '../../../account_setup/presentation/views/functions/choose_Interests_Bottom_Sheet.dart';
import '../../../account_setup/presentation/views/widgets/BirthdayCard.dart';
import '../../../account_setup/presentation/views/widgets/phoneNum_input.dart';
import '../../../login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';
import 'widget/Filter_toggle_button.dart';
import 'widget/settings_widget.dart';

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
          'Notification',
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
            FilterToggleButton(filterName: 'General Notifications',fun: (p0){},),
            FilterToggleButton(filterName: 'Sound',fun: (p0){},),
            FilterToggleButton(filterName: 'Vibrate',fun: (p0){},),
          ],
        ),
      ),
    );
  }
}
