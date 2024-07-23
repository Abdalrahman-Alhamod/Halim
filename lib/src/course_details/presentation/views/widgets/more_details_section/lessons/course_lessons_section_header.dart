import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/app_route.dart';

class CourseLessonsSectionHeader extends StatelessWidget {
  const CourseLessonsSectionHeader({
    super.key,
    required this.lessonsNumber,
  });
  final int lessonsNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$lessonsNumber ${LocaleKeys.CourseDetails_Lessons_lesson.tr()}',
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
    );
  }
}
