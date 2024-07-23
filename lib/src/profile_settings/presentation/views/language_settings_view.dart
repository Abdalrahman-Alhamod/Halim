import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'widget/language_list_tile.dart';

class LanguageSettingsView extends StatefulWidget {
  const LanguageSettingsView({super.key});

  @override
  LanguageSettingsViewState createState() => LanguageSettingsViewState();
}

class LanguageSettingsViewState extends State<LanguageSettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          toolbarHeight: 70,
          title: Text(
            LocaleKeys.Settings_Language_language.tr(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
        ),
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        body: const LanguageListTile());
  }
}
