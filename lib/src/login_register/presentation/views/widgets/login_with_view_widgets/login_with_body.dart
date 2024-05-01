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
            LocaleKeys.startMessage.tr(),
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
            label: LocaleKeys.continueWithFacebook.tr(),
          ),
          LoginWithButton(
            icon: Image.asset(
              AppImages.google,
              width: 24,
            ),
            label: LocaleKeys.continueWithGoogle.tr(),
          ),
          LoginWithButton(
            icon: Icon(
              Icons.apple,
              size: 32,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            label: LocaleKeys.continueWithApple.tr(),
          ),
          DividerWithText(
            title: LocaleKeys.or.tr(),
          ),
          CustomElevatedButton(
            onPressed: () {},
            title: LocaleKeys.signInWithPassword.tr(),
            width: 380,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.dontHaveAnAccount.tr()),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kRegisterView);
                },
                child: Text(
                  LocaleKeys.signUp.tr(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
