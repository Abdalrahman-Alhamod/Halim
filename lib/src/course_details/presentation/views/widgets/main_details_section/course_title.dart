import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_text_styles.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: context.isEnglish
          ? AppTextStyles.largeTitle.copyWith(fontSize: 28)
          : AppTextStyles.largeTitle.copyWith(fontSize: 20),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
