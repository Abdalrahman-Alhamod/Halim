import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../manager/mentor_details_cubit/mentor_details_cubit.dart';
import '../../../../../../../shared/model/review_block_model.dart';

import '../../../../../../../course_details/presentation/views/widgets/more_details_section/reviews/course_review_block.dart';

class MentorLastReviews extends StatelessWidget {
  const MentorLastReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ReviewBlockModel> mentorReviewBlockModels = [];
    return BlocBuilder<MentorDetailsCubit, MentorDetailsState>(
      buildWhen: context.read<MentorDetailsCubit>().buildMentorLastReviewsWhen,
      builder: (context, state) {
        state.whenOrNull(
          fetchMentorLastReviewsSuccess: (data, message) {
            mentorReviewBlockModels = data;
          },
        );
        return context.read<MentorDetailsCubit>().buildMentorLastReviews(
              context: context,
              state: state,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mentorReviewBlockModels.length,
                itemBuilder: (context, index) => CourseReviewBlock(
                  courseReviewBlockModel: mentorReviewBlockModels[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            );
      },
    );
  }
}
