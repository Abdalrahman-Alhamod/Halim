
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_route.dart';

class LoginWithAppBar extends StatelessWidget {
  const LoginWithAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pushReplacement(AppRoute.kIntroView);
      },
      icon: const Icon(
        Icons.arrow_back,
        size: 32,
      ),
    );
  }
}