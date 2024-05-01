import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/divider_with_text.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/translations/local_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';
import 'login_with_button.dart';

class LoginWithBody extends StatelessWidget {
  const LoginWithBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.start,
            width: 250,
          ),
          Text(
            LocaleKeys.Auth_startMessage.tr(),
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          LoginWithButton(
            icon: Image.asset(
              AppImages.facebook,
              width: 24,
            ),
            label: LocaleKeys.Auth_continueWithFacebook.tr(),
          ),
          LoginWithButton(
            icon: Image.asset(
              AppImages.google,
              width: 24,
            ),
            label: LocaleKeys.Auth_continueWithGoogle.tr(),
          ),
          LoginWithButton(
            icon: Icon(
              Icons.apple,
              size: 32,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            label: LocaleKeys.Auth_continueWithApple.tr(),
          ),
          DividerWithText(
            title: LocaleKeys.Auth_or.tr(),
          ),
          CustomElevatedButton(
            onPressed: () {},
            title: LocaleKeys.Auth_signInWithPassword.tr(),
            width: 380,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.Auth_dontHaveAnAccount.tr()),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kRegisterView);
                },
                child: Text(
                  LocaleKeys.Auth_signUp.tr(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
