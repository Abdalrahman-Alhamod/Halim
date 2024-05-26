
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants/app_constrains.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/back_arrow_icon.dart';

class CourseReadingAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CourseReadingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(onPressed: () {
        GoRouter.of(context).pop();
      }),
      leadingWidth: AppConstrains.maxWidthAppBarIcon,
      toolbarHeight: AppConstrains.maxWidthAppBarIcon,
      title: Text(
        LocaleKeys.CourseDetails_Lessons_Type_reading.tr(),
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: AppColors.primaryColor.withAlpha(30),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
