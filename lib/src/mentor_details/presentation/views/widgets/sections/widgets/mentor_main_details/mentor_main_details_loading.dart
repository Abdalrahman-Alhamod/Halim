import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/avatar_loading.dart';

import '../../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../../core/widgets/shimmer_box.dart';
import 'mentor_main_details_vertical_divider.dart';

class MentorMainDetailsLoading extends StatelessWidget {
  const MentorMainDetailsLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        const AvatarLoading(radius: 70,),
        const SizedBox(
          height: 10,
        ),
        ShimmerBox(
          height: 28,
          width: context.width * 0.5,
        ),
        const SizedBox(
          height: 10,
        ),
        ShimmerBox(
          height: 24,
          width: context.width * 0.8,
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MentorMainDetailsVerticalInfoLoading(
                label: LocaleKeys.CourseDetails_Mentor_coursesNum.tr(),
              ),
              const MentorMainDetailsVerticalDivider(),
              MentorMainDetailsVerticalInfoLoading(
                label: LocaleKeys.CourseDetails_students.tr(),
              ),
              const MentorMainDetailsVerticalDivider(),
              MentorMainDetailsVerticalInfoLoading(
                label: LocaleKeys.CourseDetails_reviews.tr(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: ShimmerBox(
                height: 68,
                radius: 32,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: ShimmerBox(
                height: 68,
                radius: 32,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MentorMainDetailsVerticalInfoLoading extends StatelessWidget {
  const MentorMainDetailsVerticalInfoLoading({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShimmerBox(
          height: 28,
          width: context.width * 0.2,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade600,
          ),
        )
      ],
    );
  }
}
