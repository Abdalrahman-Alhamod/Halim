import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../home/presentation/views/widgets/card_course.dart';
import '../../../../../../shared/model/course_card_model.dart';
import '../../../../../../shared/model/subcategory_model.dart';

class MentorCoursesSection extends StatelessWidget {
  const MentorCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
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
              isSaved: false,
            ),
          ),
        );
      },
    );
  }
}
