import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/assets/app_images.dart';
import '../../../../../core/constants/app_constrains.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';

class MyCoursesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCoursesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      title: Text(
        LocaleKeys.MyCourses_myCourses.tr(),
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      elevation: 0,
      toolbarHeight: AppConstrains.maxAppBarHeight,
      leadingWidth: 60,
      titleSpacing: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
            icon: Icon(
              Icons.search,
              size: 28,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kSearch);
            },
          ),
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Image.asset(
          AppImages.appLogo,
          width: 32,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
