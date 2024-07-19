import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/constants/app_sizes.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:halim/src/achievements/presentation/views/widgets/store_view/functions/show_coupon_purchase_dialog.dart';
import '../../../../../../core/themes/app_colors.dart';
import 'helpers/coupon_clipper.dart';

class CourseCoupon extends StatelessWidget {
  final double rating;
  final String category;
  final String courseName;
  final String mentorName;
  final num coursePrice;
  final String imageUrl;
  final num discount;
  final int couponPrice;
  final int leftAmount;

  const CourseCoupon({
    super.key,
    required this.rating,
    required this.category,
    required this.coursePrice,
    required this.courseName,
    required this.imageUrl,
    required this.mentorName,
    required this.discount,
    required this.couponPrice,
    required this.leftAmount,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCouponPurchaseDialog(
          context: context,
          courseName: courseName,
          discount: (discount * 100).toInt(),
          couponPrice: couponPrice,
          totalPoints: 1265,
        );
      },
      child: ClipPath(
        clipper: CouponClipper(holeRadius: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                color: context.isDarkMode
                    ? AppColors.loginWithButtonDarkColor
                    : AppColors.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageUrl),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                constraints: BoxConstraints(maxWidth: 160),
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      const Color.fromARGB(255, 113, 132, 204)
                                          .withOpacity(0.1),
                                ),
                                child: AutoSizeText(
                                  category,
                                  maxLines: 1,
                                  minFontSize: 8,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: context.isDarkMode
                                      ? Colors.yellowAccent.withAlpha(20)
                                      : Colors.yellowAccent.withAlpha(60),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: AppSizes.pad4,
                                  horizontal: AppSizes.pad8,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_half_rounded,
                                      color: Colors.amber[400],
                                      size: 18,
                                    ),
                                    Text(
                                      ' $rating',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          AutoSizeText(
                            courseName,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Row(
                            children: [
                              Text(
                                '${LocaleKeys.Achievements_Store_by.tr()} ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                mentorName,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      '\$${getPriceAfterDiscount(price: coursePrice, discount: discount)}  ',
                                  style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: '\$$coursePrice',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DottedLine(
              dashColor: !context.isDarkMode
                  ? AppColors.loginWithButtonDarkColor
                  : AppColors.lightFlatButtonColor,
              dashGapColor: context.isDarkMode
                  ? AppColors.loginWithButtonDarkColor
                  : AppColors.primaryColor.withOpacity(0.1),
              dashGapLength: 8,
              dashLength: 8,
            ),
            Container(
              height: 85,
              decoration: BoxDecoration(
                color: context.isDarkMode
                    ? AppColors.loginWithButtonDarkColor
                    : AppColors.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '${(discount * 100).toInt()}%',
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.yellow
                              : Colors.orange,
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        LocaleKeys.Achievements_Store_discount.tr(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  DottedLine(
                    direction: Axis.vertical,
                    dashColor: !context.isDarkMode
                        ? AppColors.loginWithButtonDarkColor
                        : AppColors.lightFlatButtonColor,
                    dashGapColor: context.isDarkMode
                        ? AppColors.loginWithButtonDarkColor
                        : AppColors.primaryColor.withOpacity(0.1),
                    dashGapLength: 8,
                    dashLength: 8,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '$couponPrice ',
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            LocaleKeys.Achievements_Store_point.tr(),
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '$leftAmount',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' ${LocaleKeys.Achievements_Store_couponLeft.tr()}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

String getPriceAfterDiscount({required num price, required num discount}) {
  num result = price - price * discount;
  result *= 100;
  result = result.round();
  result /= 100;
  return result.toString();
}
