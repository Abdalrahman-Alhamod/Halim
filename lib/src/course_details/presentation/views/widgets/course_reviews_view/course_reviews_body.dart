import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../more_details_section/reviews/course_reviews_list.dart';

import '../../../manager/reviews_cubit/reviews_cubit.dart';
import '../more_details_section/reviews/review_stars_bar/reviews_stars_bar.dart';

class CourseReviewsBody extends StatelessWidget {
  const CourseReviewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<ReviewsCubit>().refresh();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReviewsStarsBar(
            initialValue: context.read<ReviewsCubit>().courseRatingFilter,
            onChanged: (value) {
              context.read<ReviewsCubit>().courseRatingFilter = value;
              context.read<ReviewsCubit>().refresh();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            child: CourseReviewsList(),
          ),
        ],
      ),
    );
  }
}
