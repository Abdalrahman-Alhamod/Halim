import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helpers/string_helper.dart';
import '../../../../../core/widgets/network_image_loader.dart';
import '../../../../shared/model/discount_model.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'package:dotted_line/dotted_line.dart';
import '../../../data/models/store_discount_model.dart';
import 'functions/show_coupon_purchase_dialog.dart';
import '../../../../../core/themes/app_colors.dart';
import 'helpers/coupon_clipper.dart';

class CourseCoupon extends StatelessWidget {
  final StoreDiscountModel storeDiscountModel;

  const CourseCoupon({
    super.key,
    required this.storeDiscountModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCouponPurchaseDialog(
          context: context,
          courseName: storeDiscountModel.course?.title ?? '',
          discount: ((storeDiscountModel.discount?.value ?? 0.0) * 100).toInt(),
          couponPrice: storeDiscountModel.pointsCost ?? 0,
          totalPoints: 1265,
          itemId: storeDiscountModel.id ?? 0,
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    // child: Container(
                    //   width: 110,
                    //   height: 110,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(24),
                    //     image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: AssetImage(imageUrl),
                    //     ),
                    //   ),
                    // ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        24,
                      ),
                      child: NetworkImageLoader(
                        imageUrl: storeDiscountModel.course?.image,
                        width: 110,
                        height: 110,
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
                                constraints:
                                    const BoxConstraints(maxWidth: 160),
                                padding: const EdgeInsets.symmetric(
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
                                  storeDiscountModel
                                          .course?.subcategory?.name ??
                                      '',
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
                                padding: const EdgeInsets.symmetric(
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
                                      ' ${StringHelper.formatNum(storeDiscountModel.course?.reviewsAvg ?? 0.0)}',
                                      style: const TextStyle(
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
                            storeDiscountModel.course?.title ?? '',
                            style: const TextStyle(
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
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                storeDiscountModel.course?.mentor?.fullName ??
                                    '',
                                style: const TextStyle(
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
                                      '\$${StringHelper.getDiscount(storeDiscountModel.course?.price ?? 0.0, storeDiscountModel.discount ?? const DiscountModel())}  ',
                                  style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '\$${StringHelper.formatNum(storeDiscountModel.course?.price ?? 0.0)}',
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
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        '${((storeDiscountModel.discount?.value ?? 0.0) * 100).toInt()}%',
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
                  const Spacer(),
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
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '${storeDiscountModel.pointsCost ?? 0} ',
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
                              text:
                                  '${storeDiscountModel.discount?.amountAvailable ?? 0}',
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' ${LocaleKeys.Achievements_Store_couponLeft.tr()}',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
