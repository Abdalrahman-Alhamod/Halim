import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../core/utils/custom_bloc_observer.dart';
import '../core/utils/locator.dart';
import '../core/utils/logger.dart';

Future<void> initAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await Hive.initFlutter();
    await dotenv.load(fileName: ".env");
  } catch (error, stackTrace) {
    logger.e(
      'Initialization error: $error',
      error: error,
      stackTrace: stackTrace,
    );
  }

  Bloc.observer = CustomBlocObserver();
  setupLocators();
  logger.on(bloc: true, dio: true);
  testLogs();
}
