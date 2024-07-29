import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/assets/app_images.dart';
// ignore: unused_import
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import '../../../../shared/model/course_card_model.dart';
import '../../../../shared/model/subcategory_model.dart';
import '../widgets/card_course.dart';

void showRemoveBookmarkBottomSheet(
    {required BuildContext context, required void Function() onConfirm}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
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
                    LocaleKeys.MyCourses_Bookmark_removeFromBookmark.tr(),
                    style: const TextStyle(
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CardCourse(
                    courseCardModel: CourseCardModel(
                      id: 0,
                      title: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
                      image: AppImages.testCourseCover,
                      price: 48,
                      subcategory: SubcategoryModel(
                        id: 0,
                        name: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
                      ),
                      enrollmentsCount: 546,
                      reviewsAvg: 4.8,
                      isSaved: true,
                    ),
                    isEnabled: false,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(flex: 1),
                    CustomFlatButton(
                      onPressed: () {
                        context.pop();
                      },
                      title: LocaleKeys.MyCourses_Bookmark_cancel.tr(),
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: 45,
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
                        onConfirm.call();
                        context.pop();
                      },
                      title: LocaleKeys.MyCourses_Bookmark_yesRemove.tr(),
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: 45,
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
        ],
      );
    },
  );
}
