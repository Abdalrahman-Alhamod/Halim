import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../data/models/keyword_model.dart';

class CourseKeywords extends StatelessWidget {
  const CourseKeywords({
    super.key,
    required this.ketwords,
  });
  final List<KeywordModel> ketwords;
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
        SizedBox(
          height: 30,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => KeywordText(
              name: ketwords[index].name ?? '',
            ),
            separatorBuilder: (context, index) => const KeywordsSeperator(),
            itemCount: ketwords.length,
          ),
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
