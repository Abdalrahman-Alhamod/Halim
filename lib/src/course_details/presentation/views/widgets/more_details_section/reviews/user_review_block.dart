import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../../core/widgets/custome_elevated_button.dart';
import '../../../../../data/models/course_review_block_model.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import '../../../../manager/reviews_cubit/reviews_cubit.dart';
import 'course_review_block.dart';
import 'evaluation_courses_dialog.dart';

class UserReviewBlock extends StatelessWidget {
  const UserReviewBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CourseReviewBlockModel userReviewModel = const CourseReviewBlockModel();
    return BlocConsumer<ReviewsCubit, ReviewsState>(
      buildWhen: context.read<ReviewsCubit>().buildUserCourseReviewWhen,
      listenWhen: context.read<ReviewsCubit>().listenSubmitUserReviewWhen,
      listener: context.read<ReviewsCubit>().listenSubmitUserReview,
      builder: (context, state) {
        state.whenOrNull(
          fetchUserCourseReviewSuccess: (data, message) {
            userReviewModel = data;
          },
        );
        return context.read<ReviewsCubit>().buildUserCourseReview(
              context: context,
              state: state,
              child: userReviewModel.isReviewed ?? true
                  ? CourseReviewBlock(
                      courseReviewBlockModel: userReviewModel,
                    )
                  : CustomElevatedButton(
                      onPressed: () {
                        showCustomDialog(
                          context: context,
                          widget: EvaluationCoursesDialog(
                            onSubmit: (rating, comment) {
                              context.read<ReviewsCubit>().submitUserReview(
                                    rating: rating,
                                    comment: comment,
                                  );
                              context
                                  .read<ReviewsCubit>()
                                  .getUserCourseReview();
                              context
                                  .read<CourseDetailsCubit>()
                                  .getCourseMainSection();
                            },
                          ),
                        );
                      },
                      title: 'Make Review',
                    ),
            );
      },
    );
  }
}
