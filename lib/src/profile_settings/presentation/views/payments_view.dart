import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import 'widget/course_card_trans.dart';
import '../../../../core/themes/app_colors.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  PaymentsViewState createState() => PaymentsViewState();
}

class PaymentsViewState extends State<PaymentsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Settings_Payments_payments.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          CardCourseTrancations(
            category: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
            name: LocaleKeys.CourseDetails_Test_courseTitle.tr(),
            paid: false,
            imageUrl: AppImages.testCourseCover,
          ),
          CardCourseTrancations(
            category: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
            name: LocaleKeys.CourseDetails_Test_courseTitle.tr(),
            paid: true,
            imageUrl: AppImages.testCourseCover,
          )
        ]),
      ),
    );
  }
}
