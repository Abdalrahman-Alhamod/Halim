import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:local_auth/local_auth.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';

class BiometricView extends StatefulWidget {
  const BiometricView({super.key});

  @override
  BiometricViewState createState() => BiometricViewState();
}

class BiometricViewState extends State<BiometricView> {
  late final LocalAuthentication auth;
  bool _supportState = false;
  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() {
            _supportState = isSupported;
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:
              context.isDarkMode
                  ? AppColors.darkColor
                  : Colors.white,
          title: Text(
            'Biometric Authentication',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w500,
              color:
                  context.isDarkMode
                      ? Colors.white
                      : Colors.black,
            ),
          ),
          elevation: 0,
          //  toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color:
                  context.isDarkMode
                      ? Colors.white
                      : Colors.black,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kFillProfile);
            },
          )),
      backgroundColor:
          context.isDarkMode
              ? AppColors.darkColor
              : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Text(
              'Add a fingerprint to make your account more secure.',
              style: TextStyle(
                color:
                    context.isDarkMode
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            if (_supportState)
              Text(
                'This device is supported',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              )
            else
              Text(
                'This  device is not supported',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            const Spacer(
              flex: 2,
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fingerprint_outlined,
                    size: 250,
                    color: Colors.blue,
                  ),
                  /*   Text('or', style: TextStyle(fontSize: 20)),
                  SvgPicture.network(
                    'https://www.svgrepo.com/show/5105/fingerprint.svg',
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  ),*/
                ],
              ),
            ),
            /* ElevatedButton(
                onPressed: _getAailabelBiometrics,
                child: const Text('Get available biomatrics')),*/
            const Spacer(
              flex: 2,
            ),
            Text(
              'Please put your finger or face ID to get started.',
              style: TextStyle(
                fontSize: 16,
                color:
                    context.isDarkMode
                        ? Colors.white
                        : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoute.kSendCode);
                  },
                  title: 'Skip',
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 45,
                  kBackgroundcolor: context.isDarkMode
                      ? AppColors.darkFlatButtonColor
                      : const Color.fromARGB(255, 113, 132, 204)
                          .withOpacity(0.25),
                  kTextcolor:context.isDarkMode
                      ? AppColors.lightFlatButtonColor
                      : AppColors.primaryColor,
                ),
                const Spacer(
                  flex: 1,
                ),
                CustomFlatButton(
                  onPressed: _authenticate,
                  title: 'Authenticate',
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 45,
                  kTextcolor: AppColors.lightFlatButtonColor,
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  /* Future<void> _getAailabelBiometrics() async {
    List<BiometricType> avialableBiometrics =
        await auth.getAvailableBiometrics();
    print("List of avialableBiometrics: $avialableBiometrics");
    if (!mounted) {
      return;
    }
  }*/

  Future<void> _authenticate() async {
    try {
      // ignore: unused_local_variable
      bool authenticate = await auth.authenticate(
          localizedReason: '  ',
          options: const AuthenticationOptions(
              useErrorDialogs: true, stickyAuth: true, biometricOnly: true));
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
