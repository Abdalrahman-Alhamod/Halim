import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import '../widgets/card_course.dart';

void showRemoveBookmarkBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 320,
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
                'Remove from Bookmark?',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
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
            const CardCourse(
              category: '3D Design',
              evaluation: 4.8,
              followers: 8.289,
              name: '3D Design illustation',
              price: 48,
              imageUrl: AppImages.testCourseCover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 1),
                CustomFlatButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoute.kSendCode);
                  },
                  title: 'Cancel',
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 45,
                  kBackgroundcolor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? AppColors.darkFlatButtonColor
                      : AppColors.lightFlatButtonColor,
                  kTextcolor: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? AppColors.lightFlatButtonColor
                      : AppColors.primaryColor,
                ),
                const Spacer(flex: 1),
                CustomFlatButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoute.kSendCode);
                  },
                  title: 'Yes, Remove',
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
