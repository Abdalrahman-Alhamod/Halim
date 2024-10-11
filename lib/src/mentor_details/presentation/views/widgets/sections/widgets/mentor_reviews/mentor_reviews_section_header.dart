import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../data/models/mentor_details_model.dart';
import '../../../../../manager/mentor_details_cubit/mentor_details_cubit.dart';

import '../../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../../core/utils/app_route.dart';
import '../../../../../../../course_details/presentation/views/widgets/more_details_section/reviews/course_reviews_rating_header.dart';

class MentorReviewsSectionHeader extends StatelessWidget {
  const MentorReviewsSectionHeader({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    MentorDetailsModel mentorDetails =
        context.read<MentorDetailsCubit>().mentorDetails ??
            const MentorDetailsModel();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: BlocBuilder<MentorDetailsCubit, MentorDetailsState>(
            buildWhen:
                context.read<MentorDetailsCubit>().buildMentorDetailsnWhen,
            builder: (context, state) {
              state.whenOrNull(
                fetchMentorDetailsSuccess: (mentorDetailsModel, message) {
                  mentorDetails = mentorDetailsModel;
                },
              );
              return context
                  .read<MentorDetailsCubit>()
                  .buildReviewsHeaderSection(
                    context: context,
                    state: state,
                    child: CourseReviewsRatingHeader(
                      ratingCount: mentorDetails.reviewsCount ?? 0,
                      ratingAvg: mentorDetails.reviewsAvg ?? 0,
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
            GoRouter.of(context).push(AppRoute.kMentorReviewsView);
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
