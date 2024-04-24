import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:halim/core/constants/app_theme.dart';
import 'package:halim/core/utils/app_route.dart';

void main() {
  runApp(const HalimApp());
}

class HalimApp extends StatelessWidget {
  const HalimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'), // Arabic
        Locale('en'), // English
      ],
      locale: const Locale('en'),
      theme: appTheme,
    );
  }
}
