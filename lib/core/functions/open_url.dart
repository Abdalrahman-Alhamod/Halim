// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:halim/core/functions/show_toast.dart';
import 'package:halim/core/functions/toast_status.dart';
import 'package:halim/core/utils/logger.dart';
import 'package:url_launcher/url_launcher.dart';

void openUrl({required BuildContext context, required String path}) async {
  final url = Uri.parse(path);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    showTOAST(
      context,
      title: 'Cannot launch url',
      status: ToastStatus.failure,
    );
    logger.print(
      path,
      color: PrintColor.red,
      title: 'Cannot launch url',
    );
  }
}
