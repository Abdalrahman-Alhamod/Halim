import 'package:flutter/material.dart';
import 'course_coupon_loading.dart';

class CourseCouponLoadingList extends StatelessWidget {
  const CourseCouponLoadingList({super.key, this.itemCount = 10});

  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < itemCount; i++) content(context),
      ],
    );
  }

  content(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: CourseCouponLoading(),
    );
  }
}
