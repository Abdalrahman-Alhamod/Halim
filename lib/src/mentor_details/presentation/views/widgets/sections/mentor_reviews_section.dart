import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';
import 'package:halim/src/mentor_details/presentation/views/widgets/sections/widgets/mentor_reviews/mentor_last_reviews.dart';
import 'package:halim/src/mentor_details/presentation/views/widgets/sections/widgets/mentor_reviews/mentor_reviews_section_header.dart';
import '../../../../../course_details/presentation/views/widgets/more_details_section/reviews/review_stars_bar/reviews_stars_bar.dart';

class MentorReviewsSection extends StatelessWidget {
  const MentorReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MentorDetailsCubit>().getMentorLastReviews();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const MentorReviewsSectionHeader(),
        const SizedBox(
          height: 20,
        ),
        ReviewsStarsBar(
          initialValue: context.read<MentorDetailsCubit>().reviewsRatingFilter,
          onChanged: (value) {
            context.read<MentorDetailsCubit>().reviewsRatingFilter = value;
            context.read<MentorDetailsCubit>().getMentorLastReviews();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        const MentorLastReviews(),
      ],
    );
  }
}
