import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import 'course_about_mentor.dart';
import 'course_keywords.dart';

class CourseAboutSection extends StatelessWidget {
  const CourseAboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().getCourseAboutSection();
    CourseAboutSectionModel courseAboutSectionModel =
        const CourseAboutSectionModel();
    return BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: context.read<CourseDetailsCubit>().buildCourseAboutSectionWhen,
      builder: (context, state) {
        state.whenOrNull(
          fetchCourseAboutSectionSuccess: (data, message) {
            courseAboutSectionModel = data;
          },
        );
        return context.read<CourseDetailsCubit>().buildCourseAboutSection(
              context: context,
              state: state,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.CourseDetails_About_mentor.tr(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CourseAboutMentor(
                    mentorCardModel: courseAboutSectionModel.mentor ??
                        const MentorCardModel(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.CourseDetails_About_aboutCourse.tr(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadMoreText(
                    courseAboutSectionModel.description ?? '',
                    trimMode: TrimMode.Line,
                    trimLines: 5,
                    colorClickableText: AppColors.primaryColor,
                    trimCollapsedText: LocaleKeys.Buttons_readMore.tr(),
                    trimExpandedText: LocaleKeys.Buttons_showLess.tr(),
                    moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                    lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                    style: TextStyle(
                      color: context.isDarkMode
                          ? Colors.grey.shade400
                          : Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CourseKeywords(
                    ketwords: courseAboutSectionModel.keywords ?? [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
      },
    );
  }
}
