import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';
import 'package:halim/src/mentor_details/presentation/views/widgets/mentor_review_view/mentor_reviews_list.dart';

import '../../../../../course_details/presentation/views/widgets/more_details_section/reviews/review_stars_bar/reviews_stars_bar.dart';

class MentorReviewsBody extends StatelessWidget {
  const MentorReviewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<MentorDetailsCubit>().refreshMentorReviews();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReviewsStarsBar(
            initialValue:
                context.read<MentorDetailsCubit>().reviewsRatingFilter,
            onChanged: (value) {
              context.read<MentorDetailsCubit>().reviewsRatingFilter = value;
              context.read<MentorDetailsCubit>().refreshMentorReviews();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            child: MentorReviewsList(),
          ),
        ],
      ),
    );
  }
}
