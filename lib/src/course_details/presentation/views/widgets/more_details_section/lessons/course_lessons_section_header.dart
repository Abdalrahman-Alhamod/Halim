import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/app_route.dart';
import '../../../../../data/models/course_main_section_model.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';

class CourseLessonsSectionHeader extends StatelessWidget {
  const CourseLessonsSectionHeader({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    CourseMainSectionModel courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection ??
            const CourseMainSectionModel();
    return BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
      buildWhen:
          context.read<CourseDetailsCubit>().buildCourseLessonsSectionsListWhen,
      builder: (context, state) {
        state.whenOrNull(
          fetchCourseMainSectionSuccess: (data, message) {
            courseMainSectionModel = data;
          },
        );
        return context
            .read<CourseDetailsCubit>()
            .buildCourseLessonsSectionHeader(
              context: context,
              state: state,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${courseMainSectionModel.sectionsCount ?? 0} ${LocaleKeys.CourseDetails_Sections_sections.tr()} - ${courseMainSectionModel.lessonsCount ?? 0} ${LocaleKeys.CourseDetails_Lessons_lesson.tr()}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      GoRouter.of(context).push(AppRoute.kCourseLessonsView);
                    },
                    child: Text(
                      LocaleKeys.Buttons_seeAll.tr(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
      },
    );
  }
}
