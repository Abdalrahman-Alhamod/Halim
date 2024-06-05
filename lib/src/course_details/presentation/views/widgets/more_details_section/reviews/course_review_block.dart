import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/themes/app_colors.dart';
import 'review_stars_bar/course_reviews_stars_button.dart';

class CourseReviewBlock extends StatelessWidget {
  const CourseReviewBlock({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.review,
  });
  final String image;
  final String name;
  final int rating;
  final String review;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        image != '' ? image : AppImages.emptyAvatar,
                      ),
                      backgroundColor: AppColors.primaryColor.withAlpha(30),
                      radius: 24,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      child: AutoSizeText(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.scale(
                scale: 0.8,
                child: CourseReviewsStarsButton(
                  isPressed: false,
                  onPressed: null,
                  label: '$rating',
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          review,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          LocaleKeys.CourseDetails_Test_Reviews_reviewDate.tr(),
          style: TextStyle(
            fontSize: 13,
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade700,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
