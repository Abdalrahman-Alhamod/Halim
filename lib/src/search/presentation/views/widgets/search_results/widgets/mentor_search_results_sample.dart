import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../home/presentation/views/widgets/teacher_card.dart';

class MentorsSearchResultsSample extends StatelessWidget {
  const MentorsSearchResultsSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TeacherCard(
            imageUrl: AppImages.testAvatarAlaa,
            name: LocaleKeys.CourseDetails_Test_Reviews_Names_alaa.tr(),
            specialization:
                LocaleKeys.CourseDetails_Test_courseMentorTitle.tr(),
          ),
        );
      },
    );
  }
}
