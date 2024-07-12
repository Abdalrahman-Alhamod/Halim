import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:halim/core/translations/app_locales.dart';
import 'package:halim/core/translations/codegen_loader.g.dart';
import 'package:halim/core/utils/app_route.dart';

import 'core/themes/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(AppLocales.en),
        Locale(AppLocales.ar),
      ],
      path: AppLocales.translationsAssetsPath,
      startLocale: const Locale(AppLocales.ar),
      fallbackLocale: const Locale(AppLocales.en),
      assetLoader: const CodegenLoader(),
      child: const HalimApp(),
      useOnlyLangCode: true,
      saveLocale: false,
    ),
  );
}

class HalimApp extends StatelessWidget {
  const HalimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppThemes.getLightThemeData(context),
      dark: AppThemes.getDarkThemeData(context),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        darkTheme: darkTheme,
      ),
    );
  }
}
