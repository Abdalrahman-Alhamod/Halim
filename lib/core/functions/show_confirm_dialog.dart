import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/context_extensions.dart';

import '../themes/app_colors.dart';
import '../translations/locale_keys.g.dart';
import '../widgets/custome_flat_button.dart';

showConfirmDialog({
  required BuildContext context,
  required void Function() onConfirm,
  required Widget widget,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.loginWithButtonDarkColor
                : Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(flex: 1),
                  CustomFlatButton(
                    onPressed: () {
                      context.pop();
                    },
                    title: LocaleKeys.MyCourses_Bookmark_cancel.tr(),
                    height: 45,
                    width: context.width * 0.3,
                    kBackgroundcolor: context.isDarkMode
                        ? AppColors.darkFlatButtonColor
                        : AppColors.lightFlatButtonColor,
                    kTextcolor: context.isDarkMode
                        ? AppColors.lightFlatButtonColor
                        : AppColors.primaryColor,
                  ),
                  const Spacer(flex: 1),
                  CustomFlatButton(
                    onPressed: () {
                      context.pop();
                      onConfirm.call();
                    },
                    title: LocaleKeys.Buttons_confirm.tr(),
                    height: 45,
                    width: context.width * 0.3,
                    kTextcolor: AppColors.lightFlatButtonColor,
                  ),
                  const Spacer(flex: 1),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    },
    barrierDismissible: true,
    barrierColor: const Color.fromARGB(255, 0, 5, 23).withAlpha(150),
  );
}
