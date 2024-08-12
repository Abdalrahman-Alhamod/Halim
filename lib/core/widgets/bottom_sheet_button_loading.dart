
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import 'shimmer_box.dart';

class BottomSheetButtonLoading extends StatelessWidget {
  const BottomSheetButtonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          color: context.isDarkMode
              ? Colors.grey.shade800
              : Colors.grey.shade300,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 24,
          right: 24,
          left: 24,
          bottom: 36,
        ),
        child: ShimmerBox(
          radius: 32,
        ),
      ),
    );
  }
}
