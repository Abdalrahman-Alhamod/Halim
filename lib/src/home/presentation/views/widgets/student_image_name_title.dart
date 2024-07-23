import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';

class StudentImageNameTitle extends StatelessWidget {
  const StudentImageNameTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(AppImages.testMentor),
          radius: 70,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          LocaleKeys.CourseDetails_Test_courseMentorTitle.tr(),
          style: TextStyle(
            fontSize: 18,
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade600,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
