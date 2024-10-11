import 'package:flutter/material.dart';
import '../../../../../../core/helpers/string_helper.dart';
import '../../../../../shared/model/discount_model.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';

class CoursePrice extends StatelessWidget {
  const CoursePrice({
    super.key,
    required this.price,
    required this.discount,
  });
  final num price;
  final DiscountModel? discount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${discount != null ? StringHelper.getDiscount(price, discount!) : StringHelper.formatNum(price)}',
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        discount != null
            ? Text(
                '\$${StringHelper.formatNum(price)}',
                style: TextStyle(
                  fontSize: 24,
                  color: context.isDarkMode
                      ? Colors.grey.shade400
                      : Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: context.isEnglish ? 2 : 10,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
