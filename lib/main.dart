import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/translations/app_locales.dart';
import 'core/translations/codegen_loader.g.dart';

import 'src/app.dart';
import 'src/config.dart';

void main() async {
  await initAppConfig();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(AppLocales.en),
        Locale(AppLocales.ar),
      ],
      path: AppLocales.translationsAssetsPath,
      startLocale: const Locale(AppLocales.en),
      fallbackLocale: const Locale(AppLocales.en),
      assetLoader: const CodegenLoader(),
      useOnlyLangCode: true,
      saveLocale: false,
      child: const HalimApp(),
    ),
  );
}
