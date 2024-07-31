import 'package:flutter/material.dart';

import 'shimmer_base.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
  });
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ShimmerBase(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 6),
          color: color ?? Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }
}
