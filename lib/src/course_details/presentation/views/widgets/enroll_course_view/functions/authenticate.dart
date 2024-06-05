import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';

Future<bool> authenticate() async {
  late final LocalAuthentication auth = LocalAuthentication();
  bool isDeviceSupported = await auth.isDeviceSupported();
  try {
    if (isDeviceSupported) {
      return await auth.authenticate(
        localizedReason:
            LocaleKeys.CourseDetails_Enroll_verifyYourIdentityToPurchse.tr(),
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true,
          sensitiveTransaction: true,
        ),
      );
    }
  } on PlatformException catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
  return false;
}
