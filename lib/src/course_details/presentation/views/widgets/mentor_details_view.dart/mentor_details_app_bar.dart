import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/constants/app_constrains.dart';

import '../../../../../../core/widgets/back_arrow_icon.dart';

class MentorDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MentorDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      leadingWidth: AppConstrains.maxWidthAppBarIcon,
      toolbarHeight: AppConstrains.maxWidthAppBarIcon,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
