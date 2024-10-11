import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import '../../../../manager/reviews_cubit/reviews_cubit.dart';
import 'package:provider/provider.dart';
import 'course_reviews_section_header.dart';

import 'course_last_reviews.dart';
import 'review_stars_bar/reviews_stars_bar.dart';
import 'user_review_block.dart';

class CourseReviewsSection extends StatelessWidget {
  const CourseReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ReviewsCubit>().courseId =
        context.read<CourseDetailsCubit>().courseId;
    context.read<ReviewsCubit>().getCourseLastReviews();
    context.read<ReviewsCubit>().getUserCourseReview();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const CourseReviewsSectionHeader(),
        const SizedBox(
          height: 20,
        ),
        const UserReviewBlock(),
        const SizedBox(
          height: 20,
        ),
        ReviewsStarsBar(
          initialValue: context.read<ReviewsCubit>().courseRatingFilter,
          onChanged: (value) {
            context.read<ReviewsCubit>().courseRatingFilter = value;
            context.read<ReviewsCubit>().getCourseLastReviews();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        const CourseLastReviews(),
      ],
    );
  }
}
