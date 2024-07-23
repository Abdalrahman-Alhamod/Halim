import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../core/constants/app_strings.dart';

import '../core/themes/app_themes.dart';
import '../core/utils/app_route.dart';

class HalimApp extends StatelessWidget {
  const HalimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      // key: UniqueKey(),
      light: AppThemes.getLightThemeData(context),
      dark: AppThemes.getDarkThemeData(context),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        title: AppStrings.appTitle,
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: theme,
        darkTheme: darkTheme,
      ),
    );
  }
}
