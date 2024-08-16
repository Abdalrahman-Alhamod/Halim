import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/store/presentation/manager/store_cubit/store_cubit.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/functions/show_confirm_dialog.dart';
import '../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../course_details/presentation/views/widgets/enroll_course_view/widgets/authenticate_using_dialog.dart';

showCouponPurchaseDialog({
  required BuildContext context,
  required String courseName,
  required int discount,
  required int couponPrice,
  required int totalPoints,
  required int itemId,
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
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.Achievements_Store_Dialog_sureToPurchaseCoupon.tr(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: context.width * 0.80,
            child: AutoSizeText(
              courseName,
              textAlign: TextAlign.center,
              maxLines: 2,
              minFontSize: 8,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${LocaleKeys.Achievements_Store_Dialog_discount.tr()}:',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '$discount%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: context.isDarkMode ? Colors.yellow : Colors.orange,
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
                '${LocaleKeys.Achievements_Store_Dialog_couponPrice.tr()}:',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '$couponPrice ${LocaleKeys.Achievements_Store_point.tr()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 18,
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
                '${LocaleKeys.Achievements_Store_Dialog_youPoints.tr()}:',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '$totalPoints ${LocaleKeys.Achievements_Store_point.tr()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
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
          context.read<StoreCubit>().purchaseItem(
                itemId: itemId,
                type: AppUrl.kDiscounts,
              );
        },
      ),
    ),
  );
}
