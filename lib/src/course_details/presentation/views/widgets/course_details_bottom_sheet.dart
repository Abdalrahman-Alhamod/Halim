import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/helpers/string_helper.dart';
import '../../../data/models/course_main_section_model.dart';
import '../../../../shared/model/discount_model.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/navigation_extra_keys.dart';
import '../../../../../core/widgets/bottom_sheet_button.dart';
import '../../manager/course_details_cubit/course_details_cubit.dart';

class CourseDetailsBottomSheet extends StatelessWidget {
  const CourseDetailsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CourseMainSectionModel courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection ??
            const CourseMainSectionModel();
    bool isCompleted = false;
    return BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: context.read<CourseDetailsCubit>().buildCourseMainSectionWhen,
      builder: (context, state) {
        state.whenOrNull(
          fetchCourseMainSectionSuccess: (data, message) {
            courseMainSectionModel = data;
            isCompleted = courseMainSectionModel.completedLessons ==
                courseMainSectionModel.lessonsCount;
          },
        );
        return context.read<CourseDetailsCubit>().buildCourseEnrollBottomSheet(
              context: context,
              state: state,
              child: courseMainSectionModel.isEnrolled ?? false
                  ? BottomSheetButton(
                      title: LocaleKeys.CourseDetails_goToCourse.tr(),
                      onPressed: () {
                        GoRouter.of(context).push(
                          AppRoute.kMyCourseDetailsView,
                          extra: {
                            NavKeys.myCourseId: courseMainSectionModel.id ?? -1,
                            NavKeys.myCourseIsCompleted: isCompleted,
                            NavKeys.myCourseTitle:courseMainSectionModel.title??'',
                          },
                        );
                      },
                    )
                  : BottomSheetButton(
                      title:
                          '${LocaleKeys.CourseDetails_enrollCourse.tr()} - \$${StringHelper.getDiscount(courseMainSectionModel.price ?? 0, courseMainSectionModel.discount ?? const DiscountModel())}',
                      onPressed: () {
                        GoRouter.of(context).push(AppRoute.kEnrollCourseView);
                      },
                    ),
            );
      },
    );
  }
}
