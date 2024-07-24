import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import '../widgets/toast_widget.dart';
import 'toast_status.dart';

showTOAST(
  BuildContext context, {
  String? textToast,
  String? title,
  ToastStatus? status,
}) {
  showToastWidget(
    duration: const Duration(seconds: 5),
    ToastWidget(
      // TODO review code
      title: title ?? status.toString(),
      description: textToast ?? '',
      icon: switch (status) {
        null => Icons.info,
        ToastStatus.success => Icons.check_circle,
        ToastStatus.failure => Icons.cancel,
      },
      color: switch (status) {
        null => AppColors.primaryColor,
        ToastStatus.success => AppColors.success,
        ToastStatus.failure => AppColors.error,
      },
    ),
    context: context,
    position: StyledToastPosition.top,
  );
}
