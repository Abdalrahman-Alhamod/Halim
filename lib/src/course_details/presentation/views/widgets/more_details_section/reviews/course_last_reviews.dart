import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/data/models/course_review_block_model.dart';
import 'package:halim/src/course_details/presentation/manager/reviews_cubit/reviews_cubit.dart';
import 'course_review_block.dart';

class CourseLastReviews extends StatelessWidget {
  const CourseLastReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CourseReviewBlockModel> courseReviewBlockModels = [];
    return Column(
      children: [
        BlocConsumer<ReviewsCubit, ReviewsState>(
          buildWhen: context.read<ReviewsCubit>().buildCourseLastReviewsWhen,
          listenWhen: context.read<ReviewsCubit>().listenWhen,
          listener: context.read<ReviewsCubit>().listen,
          builder: (context, state) {
            state.whenOrNull(
              fetchCourseLastReviewsSuccess: (data, message) {
                courseReviewBlockModels = data;
              },
            );
            return context.read<ReviewsCubit>().buildCourseLastReviews(
                  context: context,
                  state: state,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: courseReviewBlockModels.length,
                    itemBuilder: (context, index) => CourseReviewBlock(
                      courseReviewBlockModel: courseReviewBlockModels[index],
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                  ),
                );
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
