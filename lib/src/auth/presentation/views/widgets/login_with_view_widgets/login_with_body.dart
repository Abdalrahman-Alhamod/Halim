import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/data/sources/remote/firebase_util.dart';
import '../../../../../../core/utils/app_route.dart';
import '../../../../../../core/utils/context_extensions.dart';
import '../../../../../../core/utils/logger.dart';
import '../shared_widgets/divider_with_text.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
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
          const Spacer(
            flex: 1,
          ),
          Text(
            LocaleKeys.Auth_startMessage.tr(),
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          // LoginWithButton(
          //   icon: Image.asset(
          //     AppImages.facebook,
          //     width: 24,
          //   ),
          //   label: LocaleKeys.Auth_continueWithFacebook.tr(),
          //   onPressed: () {},
          // ),
          LoginWithButton(
            icon: Image.asset(
              AppImages.google,
              width: 24,
            ),
            label: LocaleKeys.Auth_continueWithGoogle.tr(),
            onPressed: () async {
              final userCredential = await FirebaseUtil.signInWithGoogle();
              if (userCredential != null) {
                logger.e(userCredential.user!);
              }
            },
          ),
          const Spacer(
            flex: 1,
          ),
          // LoginWithButton(
          //   icon: Icon(
          //     Icons.apple,
          //     size: 32,
          //     color: Theme.of(context).colorScheme.inverseSurface,
          //   ),
          //   label: LocaleKeys.Auth_continueWithApple.tr(),
          //   onPressed: () {},
          // ),
          DividerWithText(
            title: LocaleKeys.Auth_or.tr(),
          ),
          const Spacer(
            flex: 1,
          ),
          CustomElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kLoginView);
            },
            title: LocaleKeys.Auth_signInWithPassword.tr(),
            width: 380,
          ),
          const Spacer(
            flex: 1,
          ),
          const DontHaveAnAccountTextButton(),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
