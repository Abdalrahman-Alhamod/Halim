import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../data/models/lessons_section_model.dart';
import 'course_lesson_block.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';

import '../../../../../../../core/themes/app_colors.dart';
import 'expand_view/expand_child_widget.dart';

class CourseLessonsSubSection extends StatelessWidget {
  const CourseLessonsSubSection({
    super.key,
    required this.lessonsSectionModel,
  });
  final LessonsSectionModel lessonsSectionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AutoSizeText(
                lessonsSectionModel.title ?? '',
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              '${lessonsSectionModel.duration ?? 0} ${LocaleKeys.CourseDetails_Lessons_min.tr()}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${lessonsSectionModel.lessonsCount ?? 0} ${LocaleKeys.CourseDetails_Lessons_lesson.tr()}',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(lessonsSectionModel.description ?? ''),
        const SizedBox(
          height: 20,
        ),
        ExpandChildWidget(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CourseLessonBlock(
              lessonBlockModel: lessonsSectionModel.lessons![index],
              sectionId: lessonsSectionModel.id ?? -1,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: lessonsSectionModel.lessons!.length,
          ),
        ),
      ],
    );
  }
}
