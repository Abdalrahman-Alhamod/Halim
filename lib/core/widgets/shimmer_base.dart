import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBase extends StatelessWidget {
  const ShimmerBase({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      // baseColor: Theme.of(context).primaryColor.withOpacity(.20),
      // highlightColor: Theme.of(context).primaryColor.withOpacity(.10),

      baseColor: Colors.grey.withOpacity(.90),
      highlightColor: Colors.grey.withOpacity(.30),
      // enabled: _enabled,
      child: child ?? const SizedBox.shrink(),
    );
  }
}
