import 'package:flutter/material.dart';

import 'auth_app_bar.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Stack(
            children: [
              const AuthAppBar(),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
