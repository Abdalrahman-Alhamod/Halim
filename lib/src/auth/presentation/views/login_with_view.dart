import 'package:flutter/material.dart';
import 'widgets/shared_widgets/auth_layout.dart';
import 'widgets/login_with_view_widgets/login_with_body.dart';

class LoginWithView extends StatelessWidget {
  const LoginWithView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthLayout(
      body: LoginWithBody(),
    );
  }
}
