import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import '../utils/context_extensions.dart';
import '../widgets/toast_widget.dart';
import 'toast_status.dart';

showTOAST(
  BuildContext context, {
  String? textToast,
  required String title,
  ToastStatus? status,
}) {
  showToastWidget(
    duration: const Duration(seconds: 5),
    ToastWidget(
      title: title,
      description: textToast,
      icon: switch (status) {
        null => Icons.info,
        ToastStatus.success => Icons.check_circle,
        ToastStatus.failure => Icons.error,
      },
      color: switch (status) {
        null => AppColors.primaryColor,
        ToastStatus.success => AppColors.success,
        ToastStatus.failure => AppColors.error,
      },
    ),
    context: context,
    position: StyledToastPosition.top,
    textDirection: context.isEnglish ? TextDirection.ltr : TextDirection.rtl,
  );
}
