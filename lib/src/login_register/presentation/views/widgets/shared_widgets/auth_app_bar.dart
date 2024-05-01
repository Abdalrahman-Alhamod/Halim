import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back,
        size: 32,
      ),
    );
  }
}
