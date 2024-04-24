
import 'package:flutter/material.dart';

class IntroPageTitle extends StatelessWidget {
  const IntroPageTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
