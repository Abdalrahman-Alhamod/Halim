import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../account_setup/presentation/views/fill_profile_body.dart';

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
          LocaleKeys.Settings_EditProfile_edit.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: const SingleChildScrollView(
        child: Column(children: [
          FillProfileBody(),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: CustomFlatButton(
          //     onPressed: () {
          //       showCustomDialog(
          //           context: context,
          //           widget: AccontSucssesDialog(
          //             () {
          //               GoRouter.of(context).push(AppRoute.kHome);
          //             },
          //           ));
          //     },
          //     title: LocaleKeys.FillYourProfile_continue.tr(),
          //     width: MediaQuery.of(context).size.width * 0.94,
          //     height: 60,
          //     kTextcolor: AppColors.lightFlatButtonColor,
          //   ),
          // ),
          // Container(height: 20),
        ]),
      ),
    );
  }
}
