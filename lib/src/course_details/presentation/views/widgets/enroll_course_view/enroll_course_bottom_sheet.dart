import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/functions/show_custom_dialog.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/bottom_sheet_button.dart';
import 'widgets/enroll_success_dialog.dart';

class EnrollCourseBottomSheet extends StatelessWidget {
  const EnrollCourseBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetButton(
      title: LocaleKeys.CourseDetails_Enroll_enroll.tr(),
      onPressed: () {
        showCustomDialog(context: context, widget: const EnrollSuccessDialog());
      },
    );
  }
}
