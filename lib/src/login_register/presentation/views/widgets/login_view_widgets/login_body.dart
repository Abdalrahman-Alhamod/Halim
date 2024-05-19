import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';

import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/translations/local_keys.g.dart';
import '../shared_widgets/auth_form.dart';
import '../shared_widgets/dont_have_an_account_text_button.dart';
import '../shared_widgets/or_continue_with_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Auth_loginToYourAccount.tr(),
              style: AppTextStyles.extraLargeTitle,
            ),
            const SizedBox(
              height: 40,
            ),
            AuthForm(
              buttonTitle: LocaleKeys.Auth_signIn.tr(),
              onTap: (email, password, rememberMe) {
                GoRouter.of(context).push(AppRoute.kFillProfile);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                LocaleKeys.Auth_forgotThePassword.tr(),
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const OrContinueWithButtons(),
            const SizedBox(
              height: 40,
            ),
            const DontHaveAnAccountTextButton(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
