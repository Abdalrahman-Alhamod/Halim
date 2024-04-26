import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/constants/app_theme.dart';
import 'package:halim/core/utils/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      // startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: const HalimApp(),
    ),
  );
}

class HalimApp extends StatefulWidget {
  const HalimApp({super.key});

  @override
  State<HalimApp> createState() => _HalimAppState();
}

class _HalimAppState extends State<HalimApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: getThemeData(context),
    );
  }
}
