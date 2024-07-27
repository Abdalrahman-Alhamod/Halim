import 'package:flutter/material.dart';

import 'package:halim/core/utils/context_extensions.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBase extends StatelessWidget {
  const ShimmerBase({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.isDarkMode
          ? Colors.grey.withOpacity(.10)
          : Colors.grey.withOpacity(.50),
      highlightColor: Colors.grey.withOpacity(.30),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
