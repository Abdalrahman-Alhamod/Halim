import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constrains.dart';
import '../../../../../core/widgets/back_arrow_icon.dart';
import '../../manager/chat_cubit/chat_cubit.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key, required this.chatWithName});
  final String chatWithName;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(
        onPressed: () {
          context.read<ChatCubit>().disconnectFromChatSocket();
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
