import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/shimmer_base.dart';

class RecieveBoxLoading extends StatelessWidget {
  const RecieveBoxLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerBase(
      child: Align(
        alignment:
            context.isEnglish ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              color: context.isDarkMode
                  ? AppColors.darkFlatButtonColor
                  : Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topRight:
                    context.isEnglish ? Radius.zero : const Radius.circular(16),
                topLeft:
                    context.isEnglish ? const Radius.circular(16) : Radius.zero,
                bottomRight: const Radius.circular(16),
                bottomLeft: const Radius.circular(16),
              )),
          child: SizedBox(
            height: 18,
            width: context.width * 0.6,
          ),
        ),
      ),
    );
  }
}
