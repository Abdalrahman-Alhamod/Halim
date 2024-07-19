import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/src/achievements/presentation/views/widgets/store_view/functions/show_filter_coupons_bottomsheet.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/assets/app_svgs.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import 'course_coupon.dart';

class CouponsSection extends StatelessWidget {
  const CouponsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                showFilterCouponsBottomsheet(context: context);
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppSVGs.filter,
                    width: 24,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    LocaleKeys.Achievements_Store_FilterCoupons_filterCoupons
                        .tr(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) => CourseCoupon(
              category: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
              rating: 4.8,
              courseName: LocaleKeys.CourseDetails_Test_courseTitle.tr(),
              coursePrice: 48.99,
              imageUrl: AppImages.testCourseCover,
              mentorName: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
              discount: 0.3,
              couponPrice: 250,
              leftAmount: 23,
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
          ),
        ),
      ],
    );
  }
}
