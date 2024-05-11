import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/widgets/bottom_sheet_button.dart';

class CourseDetailsBottomSheet extends StatelessWidget {
  const CourseDetailsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetButton(
      title: '${LocaleKeys.CourseDetails_enrollCourse.tr()} - \$40',
      onPressed: () {
        GoRouter.of(context).push(AppRoute.kEnrollCourseView);
      },
    );
  }
}
