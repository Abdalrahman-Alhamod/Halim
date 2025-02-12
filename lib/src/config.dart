import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../core/data/sources/local/app_storage.dart';
import '../core/data/sources/remote/firebase_util.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../core/constants/app_strings.dart';
import '../core/utils/custom_bloc_observer.dart';
import '../core/utils/locator.dart';
import '../core/utils/logger.dart';
import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';

Future<void> initAppConfig() async {
  try {
    // General Initialization
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await dotenv.load(fileName: ".env");
  } catch (error, stackTrace) {
    logger.e('General Initialization error: $error',
        error: error, stackTrace: stackTrace);
  }

  try {
    // Firebase Initialization
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    FirebaseMessaging.onBackgroundMessage(
        FirebaseUtil.firebaseMessagingBackgroundHandler);
    await FirebaseUtil.requestPermissions();
    await FirebaseUtil.getRegisterationToken();
    FirebaseUtil.handleForgroundMessages();
  } catch (error, stackTrace) {
    logger.e('Firebase Initialization error: $error',
        error: error, stackTrace: stackTrace);
  }

  try {
    // Orientation and Local Storage
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await Hive.initFlutter(AppStrings.appTitle);
    await AppStorage.instance.init();
  } catch (error, stackTrace) {
    logger.e('Orientation or Local Storage Initialization error: $error',
        error: error, stackTrace: stackTrace);
  }

  try {
    // Supabase Initialization
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL'] ?? '',
      anonKey: dotenv.env['SUPABASE_API_KEY'] ?? '',
    );
  } catch (error, stackTrace) {
    logger.e('Supabase Initialization error: $error',
        error: error, stackTrace: stackTrace);
  }

  Bloc.observer = CustomBlocObserver();
  setupLocators();
  logger.on(bloc: true, dio: true);
  // testLogs();
}
