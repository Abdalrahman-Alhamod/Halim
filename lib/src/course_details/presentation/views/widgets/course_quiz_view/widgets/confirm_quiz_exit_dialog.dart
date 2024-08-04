import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';

class ConfirmQuizExitDialog extends StatelessWidget {
  const ConfirmQuizExitDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            LocaleKeys.CourseDetails_Quiz_areYouSureYouWantToExit.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.CourseDetails_Quiz_youAnswersWillBeSubmitted.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
