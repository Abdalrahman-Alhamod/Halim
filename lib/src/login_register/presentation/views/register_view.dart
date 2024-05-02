import 'package:flutter/material.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/auth_layout.dart';
import 'widgets/register_view_widgets/register_body.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthLayout(
      body: RegisterBody(),
    );
  }
}
