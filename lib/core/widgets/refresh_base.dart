import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class RefreshBase extends StatelessWidget {
  const RefreshBase({super.key, required this.child, required this.onRefresh});

  final Widget child;
  final Future<void> Function() onRefresh;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 1,
      color: Colors.white,
      backgroundColor: AppColors.primaryColor,
      onRefresh: onRefresh,
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverFillRemaining(
            child: child,
          )
        ],
      ),
    );
  }
}
