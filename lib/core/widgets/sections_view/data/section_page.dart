import 'package:flutter/material.dart';

class SectionPage {
  const SectionPage({
    required this.title,
    required this.child,
    this.onPressed,
  });
  final String title;
  final Widget child;
  final void Function()? onPressed;
}
