import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/helpers/date_time_helper.dart';
import 'package:halim/src/course_details/data/models/course_review_block_model.dart';
import 'package:halim/src/course_details/data/models/student_card_model_extension.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/widgets/shimmer_box.dart';
import 'review_stars_bar/course_reviews_stars_button.dart';

class CourseReviewBlock extends StatelessWidget {
  const CourseReviewBlock({
    super.key,
    required this.courseReviewBlockModel,
  });
  final CourseReviewBlockModel courseReviewBlockModel;
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
                    ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: courseReviewBlockModel.student?.image ?? '',
                        fit: BoxFit.cover,
                        width: 56,
                        height: 56,
                        placeholder: (context, url) => const ShimmerBox(),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      child: AutoSizeText(
                        courseReviewBlockModel.student?.fullName ?? '',
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
                  label: '${courseReviewBlockModel.rating ?? 0}',
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          courseReviewBlockModel.comment ?? '',
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          courseReviewBlockModel.createdAt != null
              ? DateTimeHelper.format(
                  courseReviewBlockModel.createdAt!, DateTimeFormat.dateAndTime)
              : '',
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
