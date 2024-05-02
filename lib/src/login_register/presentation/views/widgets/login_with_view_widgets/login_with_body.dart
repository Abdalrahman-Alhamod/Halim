import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/divider_with_text.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/translations/local_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';
import '../shared_widgets/dont_have_an_account_text_button.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              context.isEnglish ? const SizedBox(width: 30) : Container(),
              Image.asset(
                AppImages.start,
                width: 250,
              ),
              context.isEnglish ? Container() : const SizedBox(width: 30),
            ],
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
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kLoginView);
            },
            title: LocaleKeys.Auth_signInWithPassword.tr(),
            width: 380,
          ),
          const DontHaveAnAccountTextButton()
        ],
      ),
    );
  }
}
