import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/local_keys.g.dart';

class MentorAboutMeSection extends StatelessWidget {
  const MentorAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          LocaleKeys.CourseDetails_Test_Mentor_aboutMeTitle.tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          LocaleKeys.CourseDetails_Test_Mentor_aboutMeDesc.tr(),
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
