import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import 'widgets/course_community_comments.dart';
import 'widgets/enter_comment_bottom_sheet.dart';

class CourseCommunitySection extends StatelessWidget {
  const CourseCommunitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.8,
      child: Scaffold(
        body: const CourseCommunityComments(),
        bottomSheet: EnterCommentBottomSheet(
          onSend: (comment) {
            context.read<CourseDetailsCubit>().postCommunityComment(
                  content: comment,
                );
          },
        ),
      ),
    );
  }
}
