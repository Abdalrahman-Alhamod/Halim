import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/auth_tile.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/divider_with_text.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class OrContinueWithButtons extends StatelessWidget {
  const OrContinueWithButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerWithText(
          title: LocaleKeys.Auth_orContinueWith.tr(),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthTile(
              icon: Image.asset(
                AppImages.facebook,
                width: 24,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            AuthTile(
              icon: Image.asset(
                AppImages.google,
                width: 24,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            AuthTile(
              icon: Icon(
                Icons.apple,
                size: 32,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
