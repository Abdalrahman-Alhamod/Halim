import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constrains.dart';
import '../../../../../core/widgets/back_arrow_icon.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({required this.chatWithName});
  final String chatWithName;
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
      title: Text(
        chatWithName,
        style: const TextStyle(
          fontSize: 22,
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
