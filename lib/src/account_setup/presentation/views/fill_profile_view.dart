import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/context_extensions.dart';
import 'fill_profile_body.dart';
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
        automaticallyImplyLeading: false,
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
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            FillProfileBody(),
          ],
        ),
      ),
    );
  }
}
