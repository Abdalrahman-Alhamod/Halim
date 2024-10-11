import 'package:flutter/material.dart';
import 'shimmer_box.dart';

class AvatarLoading extends StatelessWidget {
  const AvatarLoading({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: ShimmerBox(
        height: radius * 2,
        width: radius * 2,
      ),
    );
  }
}
