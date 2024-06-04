import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/reviews/course_reviews_rating_header.dart';

class CourseReviewsSectionHeader extends StatelessWidget {
  const CourseReviewsSectionHeader({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
          flex: 1,
          child: CourseReviewsRatingHeader(),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kCourseReviewsView);
          },
          child: Text(
            LocaleKeys.Buttons_seeAll.tr(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
