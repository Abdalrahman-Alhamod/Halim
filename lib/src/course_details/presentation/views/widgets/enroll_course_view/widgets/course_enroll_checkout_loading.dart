import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/helpers/string_helper.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/widgets/shimmer_box.dart';
import '../../../../../data/models/course_main_section_model.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';

class CourseEnrollCheckoutLoading extends StatelessWidget {
  const CourseEnrollCheckoutLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CourseMainSectionModel courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection ??
            const CourseMainSectionModel();
    final num price = courseMainSectionModel.price ?? 0;
    const textStyle = TextStyle(fontSize: 16);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.CourseDetails_Enroll_price.tr(),
              style: textStyle,
            ),
            Text(
              '${StringHelper.formatNum(price)}\$',
              style: textStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.CourseDetails_Enroll_discount.tr(),
              style: textStyle,
            ),
            ShimmerBox(
              width: context.width * 0.2,
              height: 18,
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.CourseDetails_Enroll_total.tr(),
              style: textStyle.copyWith(fontWeight: FontWeight.bold),
            ),
            ShimmerBox(
              width: context.width * 0.2,
              height: 18,
            ),
          ],
        ),
      ],
    );
  }
}
