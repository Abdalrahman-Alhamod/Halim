import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants/app_constrains.dart';
import '../../../../../../core/widgets/back_arrow_icon.dart';

class CourseVideoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CourseVideoAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BackArrowIcon(
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
