import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';

class CourseEnrollCheckout extends StatelessWidget {
  const CourseEnrollCheckout({
    super.key,
    required this.wallet,
    required this.price,
    required this.discount,
  });

  final double wallet;
  final double price;
  final double discount;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.CourseDetails_Enroll_wallet.tr(),
              style: textStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            Text(
              '$wallet\$',
              style: textStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
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
              LocaleKeys.CourseDetails_Enroll_price.tr(),
              style: textStyle,
            ),
            Text(
              '$price\$',
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
            Text(
              '$discount\$',
              style: textStyle,
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
            Text(
              '${price - discount}\$',
              style: textStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
