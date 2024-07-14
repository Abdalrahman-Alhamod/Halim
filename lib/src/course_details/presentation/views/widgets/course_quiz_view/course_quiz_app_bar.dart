import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';

import '../../../../../../core/constants/app_constrains.dart';
import '../../../../../../core/widgets/back_arrow_icon.dart';

class CourseQuizAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CourseQuizAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BackArrowIcon(
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Text(
          LocaleKeys.CourseDetails_Quiz_quiz.tr(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
