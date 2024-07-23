import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/functions/show_confirm_dialog.dart';
import '../../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../course_details/presentation/views/widgets/enroll_course_view/widgets/authenticate_using_dialog.dart';
import 'show_purchase_success.dart';

showProductPurchaseDialog({
  required BuildContext context,
  required String productName,
  required int productPrice,
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
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.Achievements_Store_Dialog_sureToPurchaseProduct.tr(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${LocaleKeys.Achievements_Store_Dialog_productName.tr()}:',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: context.width * 0.45,
                child: AutoSizeText(
                  productName,
                  textAlign: TextAlign.end,
                  maxLines: 2,
                  minFontSize: 8,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
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
                '${LocaleKeys.Achievements_Store_Dialog_productPrice.tr()}:',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '$productPrice ${LocaleKeys.Achievements_Store_point.tr()}',
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
          showPurchaseSuccess(
            context: context,
            message: LocaleKeys
                .Achievements_Store_Dialog_getTheProductFromCenter.tr(),
          );
        },
      ),
    ),
  );
}
