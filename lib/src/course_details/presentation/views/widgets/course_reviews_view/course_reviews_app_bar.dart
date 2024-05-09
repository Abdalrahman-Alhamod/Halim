import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/local_keys.g.dart';

class CourseReviewsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CourseReviewsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 32,
        ),
      ),
      leadingWidth: 75,
      toolbarHeight: 75,
      title: Text(
        LocaleKeys.CourseDetails_Sections_reviews.tr(),
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
