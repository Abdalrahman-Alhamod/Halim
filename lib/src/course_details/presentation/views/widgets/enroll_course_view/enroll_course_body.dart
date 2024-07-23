import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../../core/utils/context_extensions.dart';
import 'widgets/coupon_text_field.dart';

import 'course_box/course_box.dart';
import 'widgets/course_enroll_checkout.dart';

class EnrollCourseBody extends StatelessWidget {
  const EnrollCourseBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        height: context.height - 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CourseBox(),
              const SizedBox(
                height: 20,
              ),
              CouponTextField(
                onApplyPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const CourseEnrollCheckout(wallet: 550, price: 70, discount: 30),
            ],
          ),
        ),
      ),
    );
  }
}
