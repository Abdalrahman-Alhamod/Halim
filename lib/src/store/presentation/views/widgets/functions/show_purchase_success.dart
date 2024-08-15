import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';

showPurchaseSuccess({required BuildContext context, required String message}) {
  showCustomDialog(
    context: context,
    widget: SizedBox(
      width: 350,
      height: context.height * 0.55,
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          SizedBox(
            width: 200,
            child: Image.asset(
              AppImages.enrollDone,
              scale: 1.1,
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          AutoSizeText(
            LocaleKeys.Achievements_Store_Dialog_purchaseComplete.tr(),
            style: const TextStyle(
              fontSize: 32,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
          ),
          const Spacer(
            flex: 3,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomElevatedButton(
              onPressed: () {
                context.pop();
              },
              title: LocaleKeys.Buttons_ok.tr(),
              elevation: 0,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ),
  );
}
