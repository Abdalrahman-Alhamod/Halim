import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class QuizNextAttemptListTile extends StatefulWidget {
  const QuizNextAttemptListTile({
    super.key,
    this.lastAttemptTime,
    required this.onCounterDone,
  });
  final DateTime? lastAttemptTime;
  final void Function() onCounterDone;

  @override
  QuizNextAttemptListTileState createState() => QuizNextAttemptListTileState();
}

class QuizNextAttemptListTileState extends State<QuizNextAttemptListTile> {
  late Timer _timer;
  String countdownText = '';

  @override
  void initState() {
    super.initState();
    _updateCountdown();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateCountdown();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateCountdown() {
    setState(() {
      countdownText = calculateCountdown(widget.lastAttemptTime);
    });
  }

  String calculateCountdown(DateTime? startTime) {
    if (startTime == null) {
      return ' - - : - - : - - ';
    }

    final currentTime = DateTime.now();
    final duration = startTime.difference(currentTime).abs();

    if (duration.inHours >= 8) {
      widget.onCounterDone.call();
      _timer.cancel();
      return ' - - : - - : - - ';
    }

    final remainingTime = const Duration(hours: 8) - duration;

    final hours = remainingTime.inHours.toString().padLeft(2, '0');
    final minutes = (remainingTime.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (remainingTime.inSeconds % 60).toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time,
          size: 36,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '${LocaleKeys.CourseDetails_Quiz_nextAttempt.tr()}:',
          style: TextStyle(
            fontSize: 18,
            color: context.isDarkMode ? Colors.grey : Colors.grey.shade600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          countdownText,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
