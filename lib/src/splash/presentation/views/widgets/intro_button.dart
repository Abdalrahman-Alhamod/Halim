import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/widgets/custome_elevated_button.dart';

import '../../../../../core/utils/app_route.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({
    super.key,
    required this.pageController,
    required this.isLastPage,
  });

  final PageController pageController;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        if (isLastPage) {
          GoRouter.of(context).push(AppRoute.kLoginWithView);
        } else {
          pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
      title: isLastPage
          ? LocaleKeys.Intro_getStarted.tr()
          : LocaleKeys.Buttons_next.tr(),
    );
  }
}
