import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/local_keys.g.dart';

import '../../../../../../core/constants/app_constrains.dart';
import '../../../../../../core/widgets/back_arrow_icon.dart';

class CourseLessonsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CourseLessonsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(onPressed: () {
        GoRouter.of(context).pop();
      }),
      leadingWidth: AppConstrains.maxWidthAppBarIcon,
      toolbarHeight: AppConstrains.maxWidthAppBarIcon,
      title: Text(
        LocaleKeys.CourseDetails_Sections_lessons.tr(),
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
