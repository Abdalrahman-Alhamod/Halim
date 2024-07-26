import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widgets/custom_loading_indicator.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return const CustomLoadingIndicator(
        color: AppColors.primaryColor,
        size: 80,
      );
    },
    barrierDismissible: false,
  );
}
