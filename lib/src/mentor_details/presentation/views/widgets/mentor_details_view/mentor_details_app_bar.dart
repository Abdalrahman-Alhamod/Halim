import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/constants/app_constrains.dart';

import '../../../../../../core/widgets/back_arrow_icon.dart';

class MentorDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MentorDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO Refactor all app bars
    return SafeArea(
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
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
