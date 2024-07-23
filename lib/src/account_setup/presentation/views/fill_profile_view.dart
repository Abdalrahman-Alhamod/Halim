import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import 'fill_profile_body.dart';
import 'functions/show_choose_interests_bottom_sheet.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';

class FillProfilView extends StatefulWidget {
  const FillProfilView({super.key});

  @override
  State<FillProfilView> createState() => _FillProfilViewState();
}

class _FillProfilViewState extends State<FillProfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(
            LocaleKeys.FillYourProfile_fillYourProfile.tr(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            const FillProfileBody(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomFlatButton(
                onPressed: () {
                  chooseInterestsBottomSheet(context);
                },
                title: LocaleKeys.FillYourProfile_continue.tr(),
                width: MediaQuery.of(context).size.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
            ),
            Container(height: 20),
          ],
        )));
  }
}
