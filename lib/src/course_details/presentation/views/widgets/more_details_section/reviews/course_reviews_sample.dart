import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/reviews/course_review_block.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/translations/local_keys.g.dart';

class CourseReviewsSample extends StatelessWidget {
  const CourseReviewsSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CourseReviewBlock(
          image: AppImages.testAvatarYassin,
          name: LocaleKeys.CourseDetails_Test_Reviews_Names_yassin.tr(),
          rating: 5,
          review: LocaleKeys.CourseDetails_Test_Reviews_review1.tr(),
        ),
        const SizedBox(
          height: 20,
        ),
        CourseReviewBlock(
          image: AppImages.testAvatarObada,
          name: LocaleKeys.CourseDetails_Test_Reviews_Names_obada.tr(),
          rating: 3,
          review: LocaleKeys.CourseDetails_Test_Reviews_review3.tr(),
        ),
        const SizedBox(
          height: 20,
        ),
        CourseReviewBlock(
          image: AppImages.testAvatarAlaa,
          name: LocaleKeys.CourseDetails_Test_Reviews_Names_alaa.tr(),
          rating: 5,
          review: LocaleKeys.CourseDetails_Test_Reviews_review2.tr(),
        ),
        const SizedBox(
          height: 20,
        ),
        CourseReviewBlock(
          image: AppImages.testAvatarAbd,
          name: LocaleKeys.CourseDetails_Test_Reviews_Names_abd.tr(),
          rating: 1,
          review: LocaleKeys.CourseDetails_Test_Reviews_review5.tr(),
        ),
        const SizedBox(
          height: 20,
        ),
        CourseReviewBlock(
          image: '',
          name: LocaleKeys.CourseDetails_Test_Reviews_Names_ahmad.tr(),
          rating: 2,
          review: LocaleKeys.CourseDetails_Test_Reviews_review4.tr(),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
