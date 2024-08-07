import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';

import '../../../../../course_details/presentation/views/widgets/more_details_section/reviews/course_review_block.dart';

class MentorReviewsList extends StatelessWidget {
  const MentorReviewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<MentorDetailsCubit, MentorDetailsState>(
            buildWhen: context
                .read<MentorDetailsCubit>()
                .buildCoursePaginatedReviewListWhen,
            builder: (context, state) {
              return context
                  .read<MentorDetailsCubit>()
                  .buildCoursePaginatedReviewssList(
                context,
                pagingController: context
                    .read<MentorDetailsCubit>()
                    .mentorReviewsPagingAdapter
                    .pagingController,
                itemBuilder: (_, item, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: CourseReviewBlock(
                      courseReviewBlockModel: item,
                    ),
                  );
                },
              );
            },
          ),
          // child: CourseReviewBlockLoadingList(),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
