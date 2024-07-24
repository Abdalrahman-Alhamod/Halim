import 'package:flutter/material.dart';
import 'widgets/login_view_widgets/login_body.dart';
import 'widgets/shared_widgets/auth_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthLayout(
      body: LoginBody(),
    );
  }
}
