import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../manager/reviews_cubit/reviews_cubit.dart';
import 'course_review_block.dart';

class CourseReviewsList extends StatelessWidget {
  const CourseReviewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocConsumer<ReviewsCubit, ReviewsState>(
            buildWhen:
                context.read<ReviewsCubit>().buildCoursePaginatedReviewListWhen,
            listenWhen:
                context.read<ReviewsCubit>().listenCoursePaginatedReviewsWhen,
            listener: context.read<ReviewsCubit>().listenCoursePaginatedReviews,
            builder: (context, state) {
              return context
                  .read<ReviewsCubit>()
                  .buildCoursePaginatedReviewssList(
                context,
                pagingController: context
                    .read<ReviewsCubit>()
                    .courseReviewsPagingAdapter
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
