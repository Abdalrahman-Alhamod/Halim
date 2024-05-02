import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/translations/local_keys.g.dart';
import '../../../../../../core/utils/app_route.dart';

class AlreadyHaveAnAccountTextButton extends StatelessWidget {
  const AlreadyHaveAnAccountTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.Auth_alreadyHaveAnAccount.tr(),
          style: TextStyle(color: Colors.grey.shade400),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kLoginView);
          },
          child: Text(
            LocaleKeys.Auth_signIn.tr(),
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
