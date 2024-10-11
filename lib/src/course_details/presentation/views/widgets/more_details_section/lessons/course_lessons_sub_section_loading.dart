import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/widgets/shimmer_base.dart';
import '../../../../../../../core/widgets/shimmer_box.dart';
import 'expand_view/expand_child_widget.dart';

class CourseLessonsSubSectionLoading extends StatelessWidget {
  const CourseLessonsSubSectionLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ShimmerBox(
                height: 25,
                width: context.width * 0.6,
              ),
              const Spacer(),
              ShimmerBox(
                height: 25,
                width: context.width * 0.1,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                LocaleKeys.CourseDetails_Lessons_min.tr(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShimmerBox(
                height: 20,
                width: context.width * 0.1,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                LocaleKeys.CourseDetails_Lessons_lesson.tr(),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ShimmerBox(
              width: context.width * 0.8,
              height: 15,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 6,
            ),
            itemCount: 3,
          ),
          const SizedBox(
            height: 6,
          ),
          ShimmerBox(
            width: context.width * 0.4,
            height: 15,
          ),
          const SizedBox(
            height: 20,
          ),
          const ShimmerBase(
            child: ExpandChildWidget(
              child: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
