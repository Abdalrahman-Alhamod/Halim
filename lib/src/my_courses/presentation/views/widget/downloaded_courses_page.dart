import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/assets/app_images.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../home/presentation/views/widgets/card_course.dart';

class DownloadedCoursesPage extends StatelessWidget {
  const DownloadedCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 220,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CardCourse(
              category: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
              evaluation: 4.8,
              followers: 8.289,
              name: LocaleKeys.CourseDetails_Test_courseTitle.tr(),
              price: 48,
              imageUrl: AppImages.testCourseCover,
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
