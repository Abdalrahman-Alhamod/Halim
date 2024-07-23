import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';

import 'widget/introductory_widget.dart';

import '../../../../core/themes/app_colors.dart';

class DefinitionHalimView extends StatefulWidget {
  const DefinitionHalimView({super.key});

  @override
  DefinitionHalimViewState createState() => DefinitionHalimViewState();
}

class DefinitionHalimViewState extends State<DefinitionHalimView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Settings_HalimTeam_definitionofHailm.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          IntroductoryWidget(
              title: LocaleKeys.Settings_HalimTeam_whatisHalim.tr(),
              text: LocaleKeys.Settings_HalimTeam_whatis.tr()),
          IntroductoryWidget(
              title: LocaleKeys.Settings_HalimTeam_life.tr(),
              text: LocaleKeys.Settings_HalimTeam_l2ife.tr()),
        ]),
      ),
    );
  }
}
