import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/bottom_sheet_button.dart';
import 'widgets/course_community_comments_sample.dart';
import 'widgets/enter_comment_bottom_sheet.dart';

class CourseCommunitySection extends StatelessWidget {
  const CourseCommunitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.8,
      child: Scaffold(
        body: SingleChildScrollView(
          child: const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CourseCommunityCommentsSample(),
              SizedBox(
                height: 120,
              ),
            ],
          ),
        ),
        bottomSheet: BottomSheetButton(
          title: LocaleKeys.CourseDetails_Community_comment.tr(),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => EnterCommentBottomSheet(
                onSend: (comment) {},
              ),
            );
          },
        ),
      ),
    );
  }
}
