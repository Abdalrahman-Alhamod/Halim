import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/utils/app_route.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/widgets/custome_elevated_button.dart';

class EnrollSuccessDialog extends StatelessWidget {
  const EnrollSuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 350,
        height: context.height * 0.65,
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
              LocaleKeys.CourseDetails_Enroll_enrollSuccess.tr(),
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
              LocaleKeys.CourseDetails_Enroll_enrollSuccessDesc.tr(),
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
              child: Column(
                children: [
                  CustomElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoute.kMyCourseDetailsView);
                    },
                    title: LocaleKeys.CourseDetails_viewCourse.tr(),
                    elevation: 0,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoute.kReceiptView);
                    },
                    title: LocaleKeys.CourseDetails_Enroll_viewEReceipt.tr(),
                    elevation: 0,
                    backgroundColor: context.isDarkMode
                        ? AppColors.darkFlatButtonColor
                        : Colors.grey.shade600,
                  ),
                ],
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
}
