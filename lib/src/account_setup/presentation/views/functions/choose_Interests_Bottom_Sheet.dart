import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/interests_widget.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/custome_flat_button.dart';

void chooseInterestsBottomSheet(BuildContext context) {
  List<String> Interests = [
    '🔥 All',
    '📊 BA',
    '💰 Business',
    '💡 AI',
    '🧮 Mathematical',
    '📊 BA',
    '🔥 All',
    '🔥 All',
    '📊 BA',
    '💰 Business',
    '💡 AI',
    '🖋 3D Design',
    '💊 Medicine',
    '💡 AI',
  ];

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.darkColor
              : AppColors.lightFlatButtonColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                LocaleKeys.FillYourProfile_Interests_choose.tr(),
                style: TextStyle(
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
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children:
                      Interests.map((Interest) => InterestsWidget(Interest))
                          .toList(),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomFlatButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoute.kHome);
                    },
                    title: LocaleKeys.FillYourProfile_Interests_skip.tr(),
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: 45,
                    kBackgroundcolor: MediaQuery.of(context)
                                .platformBrightness ==
                            Brightness.dark
                        ? AppColors.darkFlatButtonColor
                        : Color.fromARGB(255, 113, 132, 204).withOpacity(0.25),
                    kTextcolor: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? AppColors.lightFlatButtonColor
                        : AppColors.primaryColor,
                  ),
                  CustomFlatButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoute.kCreatePin);
                    },
                    title: LocaleKeys.FillYourProfile_Interests_continue.tr(),
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: 45,
                    kTextcolor: AppColors.lightFlatButtonColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
