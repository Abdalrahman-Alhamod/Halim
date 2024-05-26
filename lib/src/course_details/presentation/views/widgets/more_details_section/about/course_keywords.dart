import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';

class CourseKeywords extends StatelessWidget {
  const CourseKeywords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Row(
          children: [
            KeywordText(
              name: 'UI/UX',
            ),
            KeywordsSeperator(),
            KeywordText(
              name: 'Figma',
            ),
            KeywordsSeperator(),
            KeywordText(
              name: 'Graphic Design',
            ),
          ],
        ),
      ],
    );
  }
}

class KeywordsSeperator extends StatelessWidget {
  const KeywordsSeperator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '    -    ',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class KeywordText extends StatelessWidget {
  const KeywordText({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}
