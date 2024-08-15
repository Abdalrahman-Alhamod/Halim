import 'package:flutter/material.dart';

class CouponClipper extends CustomClipper<Path> {
  final double holeRadius;

  CouponClipper({required this.holeRadius});

  @override
  Path getClip(Size size) {
    var bottom = size.height / 2;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0, size.height - bottom / 2 - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - bottom / 2),
        clockwise: true,
        radius: const Radius.circular(1),
      )
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - bottom / 2)
      ..arcToPoint(
        Offset(size.width, size.height - bottom / 2 - holeRadius),
        clockwise: true,
        radius: const Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CouponClipper oldClipper) => true;
}
