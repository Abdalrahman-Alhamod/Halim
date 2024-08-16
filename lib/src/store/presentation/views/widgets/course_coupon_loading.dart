import 'package:flutter/material.dart';

import '../../../../../core/widgets/shimmer_box.dart';
import 'helpers/coupon_clipper.dart';

class CourseCouponLoading extends StatelessWidget {
  const CourseCouponLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CouponClipper(holeRadius: 40),
      child: const ShimmerBox(
        height: 255,
        radius: 32,
      ),
    );
  }
}
