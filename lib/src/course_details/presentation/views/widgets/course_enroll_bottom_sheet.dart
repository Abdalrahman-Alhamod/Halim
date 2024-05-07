import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/widgets/custome_elevated_button.dart';

class CourseEnrollButtomSheet extends StatelessWidget {
  const CourseEnrollButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(
          color:
              context.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          right: 24,
          left: 24,
          bottom: 36,
        ),
        child: CustomElevatedButton(
          onPressed: () {},
          title: '${LocaleKeys.CourseDetails_enrollCourse.tr()} - \$40',
        ),
      ),
    );
  }
}
