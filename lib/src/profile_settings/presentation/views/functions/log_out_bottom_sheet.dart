import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/custome_flat_button.dart';

void logOutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.darkColor
              : AppColors.lightFlatButtonColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                LocaleKeys.Settings_Logout_logout.tr(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 1,
                color: Colors.grey[300],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                LocaleKeys.Settings_Logout_areYou.tr(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 1),
                CustomFlatButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  title: LocaleKeys.Settings_Logout_cancel.tr(),
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 45,
                  kBackgroundcolor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? AppColors.darkFlatButtonColor
                      : AppColors.textFieldColor,
                  kTextcolor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? AppColors.lightFlatButtonColor
                      : AppColors.primaryColor,
                ),
                const Spacer(flex: 1),
                CustomFlatButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  title: LocaleKeys.Settings_Logout_yes.tr(),
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 45,
                  kTextcolor: AppColors.lightFlatButtonColor,
                ),
                const Spacer(flex: 1),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      );
    },
  );
}
