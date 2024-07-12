import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/functions/show_confirm_dialog.dart';
import '../../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../course_details/presentation/views/widgets/enroll_course_view/widgets/authenticate_using_dialog.dart';
import 'show_purchase_success.dart';

showCouponPurchaseDialog({
  required BuildContext context,
  required String courseName,
  required int discount,
  required int couponPrice,
  required int totalPoints,
}) {
  showConfirmDialog(
    context: context,
    widget: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.Achievements_Store_Dialog_confirmToPurchase.tr(),
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.Achievements_Store_Dialog_sureToPurchaseCoupon.tr(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${LocaleKeys.Achievements_Store_Dialog_courseName.tr()}:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: context.width * 0.45,
                child: AutoSizeText(
                  courseName,
                  textAlign: TextAlign.end,
                  maxLines: 2,
                  minFontSize: 8,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${LocaleKeys.Achievements_Store_Dialog_discount.tr()}:',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '${discount}%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: context.isDarkMode ? Colors.yellow : Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${LocaleKeys.Achievements_Store_Dialog_couponPrice.tr()}:',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '${couponPrice} ${LocaleKeys.Achievements_Store_point.tr()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${LocaleKeys.Achievements_Store_Dialog_youPoints.tr()}:',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '${totalPoints} ${LocaleKeys.Achievements_Store_point.tr()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
    onConfirm: () => showCustomDialog(
      context: context,
      widget: AuthenticateUsingDialog(
        message:
            LocaleKeys.CourseDetails_Enroll_verifyYourIdentityToPurchse.tr(),
        onSuccess: () {
          showPurchaseSuccess(
            context: context,
            message:
                LocaleKeys.Achievements_Store_Dialog_youWillRecieveCouponNotification.tr(),
          );
        },
      ),
    ),
  );
}
