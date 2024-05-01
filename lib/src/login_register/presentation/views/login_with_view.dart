import 'package:flutter/material.dart';

import 'widgets/login_with_app_bar.dart';
import 'widgets/login_with_body.dart';

class LoginWithView extends StatelessWidget {
  const LoginWithView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Stack(
            children: [
              LoginWithAppBar(),
              LoginWithBody(),
            ],
          ),
        ),
      ),
    );
  }
}
