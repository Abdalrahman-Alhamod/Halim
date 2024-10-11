

import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/widgets/shimmer_box.dart';

class StaticBadgeLoading extends StatelessWidget {
  const StaticBadgeLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerBox(
          width: context.width * 0.35,
          height: context.width * 0.35,
        ),
        const SizedBox(
          height: 10,
        ),
        ShimmerBox(
          width: context.width * 0.3,
          height: 16,
        ),
      ],
    );
  }
}
