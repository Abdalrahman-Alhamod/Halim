import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/constants/app_colors.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/custome_elevated_button.dart';

class LoginWithView extends StatelessWidget {
  const LoginWithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRoute.kIntroView);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Center(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Divider(
                            thickness: 1,
                            color: context.isDarkMode
                                ? AppColors.darkFlatButtonColor
                                : Colors.grey.shade300,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(LocaleKeys.or.tr()),
                        const SizedBox(
                          width: 15,
                        ),
                        Flexible(
                          flex: 1,
                          child: Divider(
                            thickness: 1,
                            color: context.isDarkMode
                                ? AppColors.darkFlatButtonColor
                                : Colors.grey.shade300,
                          ),
                        ),
                      ],
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
                            onPressed: () {},
                            child: Text(LocaleKeys.signUp.tr()))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginWithButton extends StatelessWidget {
  const LoginWithButton({
    super.key,
    required this.icon,
    required this.label,
  });
  final Widget icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: context.isDarkMode
            ? AppColors.loginWithButtonDarkColor
            : Colors.grey.shade100,
        elevation: 0.0,
        fixedSize: const Size(380, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
      ),
      icon: icon,
      label: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.inverseSurface,
        ),
      ),
    );
  }
}
