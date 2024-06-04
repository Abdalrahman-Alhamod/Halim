import 'package:flutter/material.dart';

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_back,
        size: 24,
      ),
    );
  }
}
