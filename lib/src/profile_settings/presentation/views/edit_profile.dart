import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/account_setup/presentation/views/fill_profile_body.dart';

import 'package:halim/src/forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';

import '../../../../core/functions/show_custom_dialog.dart';
import '../../../../core/themes/app_colors.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  EditProfileViewState createState() => EditProfileViewState();
}

class EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          'Edit Profile',
          style: TextStyle(
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          FillProfileBody(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomFlatButton(
              onPressed: () {
                showCustomDialog(
                    context: context,
                    widget: AccontSucssesDialog(
                      () {
                        GoRouter.of(context).push(AppRoute.kHome);
                      },
                    ));
              },
              title: LocaleKeys.FillYourProfile_continue.tr(),
              width: MediaQuery.of(context).size.width * 0.94,
              height: 60,
              kTextcolor: AppColors.lightFlatButtonColor,
            ),
          ),
          Container(height: 20),
        ]),
      ),
    );
  }
}
