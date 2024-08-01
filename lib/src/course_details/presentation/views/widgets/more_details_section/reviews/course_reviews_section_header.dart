import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/app_route.dart';
import '../../../../../data/models/course_main_section_model.dart';
import 'course_reviews_rating_header.dart';

class CourseReviewsSectionHeader extends StatelessWidget {
  const CourseReviewsSectionHeader({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    CourseMainSectionModel courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection ??
            const CourseMainSectionModel();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
            buildWhen:
                context.read<CourseDetailsCubit>().buildCourseMainSectionWhen,
            builder: (context, state) {
              state.whenOrNull(
                fetchCourseMainSectionSuccess: (data, message) {
                  courseMainSectionModel = data;
                },
              );
              return context
                  .read<CourseDetailsCubit>()
                  .buildReviewsHeaderSection(
                    context: context,
                    state: state,
                    child: CourseReviewsRatingHeader(
                      ratingCount: courseMainSectionModel.reviewsCount ?? 0,
                      ratingAvg: courseMainSectionModel.reviewsAvg ?? 0,
                    ),
                  );
            },
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kCourseReviewsView);
          },
          child: Text(
            LocaleKeys.Buttons_seeAll.tr(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
