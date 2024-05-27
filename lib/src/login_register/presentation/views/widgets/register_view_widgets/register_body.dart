import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/utils/app_route.dart';
import '../shared_widgets/already_have_an_account_text_button.dart';
import '../shared_widgets/auth_form.dart';
import '../shared_widgets/or_continue_with_button.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({
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
              LocaleKeys.Auth_createYourAccount.tr(),
              style: AppTextStyles.extraLargeTitle,
            ),
            const SizedBox(
              height: 40,
            ),
            AuthForm(
              buttonTitle: LocaleKeys.Auth_signUp.tr(),
              onTap: (email, password, rememberMe) {
                GoRouter.of(context).push(AppRoute.kConfirmEmailView);
              },
            ),
            const SizedBox(
              height: 70,
            ),
            const OrContinueWithButtons(),
            const SizedBox(
              height: 40,
            ),
            const AlreadyHaveAnAccountTextButton(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
