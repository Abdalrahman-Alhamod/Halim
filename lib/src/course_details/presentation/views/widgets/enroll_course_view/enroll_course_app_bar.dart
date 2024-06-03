import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/widgets/back_arrow_icon.dart';

import '../../../../../../core/constants/app_constrains.dart';

class EnrollCourseAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const EnrollCourseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(onPressed: () {
        GoRouter.of(context).pop();
      }),
      leadingWidth: AppConstrains.maxWidthAppBarIcon,
      toolbarHeight: AppConstrains.maxWidthAppBarIcon,
      title: Text(
        LocaleKeys.CourseDetails_enrollCourse.tr(),
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
