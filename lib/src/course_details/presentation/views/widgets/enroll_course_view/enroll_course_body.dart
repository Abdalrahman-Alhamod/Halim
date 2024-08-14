import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'widgets/coupon_text_field.dart';

import 'course_box/course_box.dart';
import 'widgets/course_enroll_checkout.dart';

class EnrollCourseBody extends StatelessWidget {
  const EnrollCourseBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<CourseDetailsCubit, CourseDetailsState>(
      listenWhen: context.read<CourseDetailsCubit>().listenEnrollCourseWhen,
      listener: context.read<CourseDetailsCubit>().listenEnrollCourse,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CourseBox(),
              SizedBox(
                height: 20,
              ),
              CouponTextField(),
              SizedBox(
                height: 20,
              ),
              CourseEnrollCheckout(),
              SizedBox(
                height: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
