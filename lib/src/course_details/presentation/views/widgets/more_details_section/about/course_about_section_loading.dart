import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/widgets/shimmer_box.dart';
import 'course_keywords.dart';
import '../../../../../../mentor_details/presentation/views/widgets/mentor_card_loading.dart';

class CourseAboutSectionLoading extends StatelessWidget {
  const CourseAboutSectionLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const MentorCardLoading(),
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
        ListView.separated(
          shrinkWrap: true,
           physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => ShimmerBox(
            width: context.width * 0.9,
            height: 10,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemCount: 7,
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.CourseDetails_About_keywords.tr(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ShimmerBox(
                  width: context.width * 0.2,
                ),
                separatorBuilder: (context, index) => const KeywordsSeperator(),
                itemCount: 3,
              ),
            ),
          ],
        )
      ],
    );
  }
}
