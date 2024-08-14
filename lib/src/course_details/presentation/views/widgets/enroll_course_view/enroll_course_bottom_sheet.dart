import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../core/functions/show_custom_dialog.dart';
import 'widgets/authenticate_using_dialog.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/bottom_sheet_button.dart';

class EnrollCourseBottomSheet extends StatelessWidget {
  const EnrollCourseBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetButton(
      title: LocaleKeys.CourseDetails_Enroll_enroll.tr(),
      onPressed: () async {
        showCustomDialog(
          context: context,
          widget: AuthenticateUsingDialog(
            message: LocaleKeys.CourseDetails_Enroll_verifyYourIdentityToPurchse
                .tr(),
            onSuccess: () {
              context.read<CourseDetailsCubit>().enrollCourse();
            },
          ),
        );
      },
    );
  }
}
