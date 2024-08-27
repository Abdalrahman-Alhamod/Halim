import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/auth_cubit/auth_cubit.dart';
import '../login_with_view_widgets/login_with_button.dart';
import 'divider_with_text.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class OrContinueWithButtons extends StatelessWidget {
  const OrContinueWithButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: context.read<AuthCubit>().listenSignInWithGoogleWhen,
      listener: context.read<AuthCubit>().listenSignInWithGoogle,
      child: Column(
        children: [
          // DividerWithText(
          //   title: LocaleKeys.Auth_orContinueWith.tr(),
          // ),
          DividerWithText(
            title: LocaleKeys.Auth_or.tr(),
          ),
          const SizedBox(
            height: 30,
          ),
          LoginWithButton(
            icon: Image.asset(
              AppImages.google,
              width: 24,
            ),
            label: LocaleKeys.Auth_continueWithGoogle.tr(),
            onPressed: ()  {
              context.read<AuthCubit>().signInWithGoogle();
            },
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     AuthTile(
          //       icon: Image.asset(
          //         AppImages.facebook,
          //         width: 24,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 20,
          //     ),
          //     AuthTile(
          //       icon: Image.asset(
          //         AppImages.google,
          //         width: 24,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 20,
          //     ),
          //     AuthTile(
          //       icon: Icon(
          //         Icons.apple,
          //         size: 32,
          //         color: Theme.of(context).colorScheme.inverseSurface,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
