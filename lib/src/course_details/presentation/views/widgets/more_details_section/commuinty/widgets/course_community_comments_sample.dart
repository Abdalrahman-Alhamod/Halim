import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/assets/app_images.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';
import '../comments_tree/comments_tree.dart';
import '../comments_tree/data/comment.dart';

class CourseCommunityCommentsSample extends StatelessWidget {
  const CourseCommunityCommentsSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CommentsTree(
        //   rootComment: Comment(
        //     avatar: AppImages.testMentor,
        //     userName: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
        //     content: LocaleKeys.CourseDetails_Test_Community_comment4.tr(),
        //   ),
        //   replies: const [],
        // ),
        const SizedBox(
          height: 10,
        ),
        CommentsTree(
          rootComment: Comment(
            avatar: AppImages.testAvatarAbd,
            userName: LocaleKeys.CourseDetails_Test_Reviews_Names_abd.tr(),
            content: LocaleKeys.CourseDetails_Test_Community_comment1.tr(),
          ),
          replies: [
            Comment(
              avatar: AppImages.testAvatarYassin,
              userName: LocaleKeys.CourseDetails_Test_Reviews_Names_yassin.tr(),
              content: LocaleKeys.CourseDetails_Test_Community_reply1.tr(),
            ),
            Comment(
              avatar: AppImages.testAvatarAbd,
              userName: LocaleKeys.CourseDetails_Test_Reviews_Names_abd.tr(),
              content: LocaleKeys.CourseDetails_Test_Community_reply2.tr(),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CommentsTree(
          rootComment: Comment(
            avatar: AppImages.testAvatarAlaa,
            userName: LocaleKeys.CourseDetails_Test_Reviews_Names_alaa.tr(),
            content: LocaleKeys.CourseDetails_Test_Community_comment2.tr(),
          ),
          replies: const [],
        ),
        const SizedBox(
          height: 10,
        ),
        CommentsTree(
          rootComment: Comment(
            avatar: AppImages.testAvatarObada,
            userName: LocaleKeys.CourseDetails_Test_Reviews_Names_obada.tr(),
            content: LocaleKeys.CourseDetails_Test_Community_comment3.tr(),
          ),
          replies: [
            Comment(
              avatar: AppImages.testAvatarAlaa,
              userName: LocaleKeys.CourseDetails_Test_Reviews_Names_alaa.tr(),
              content: LocaleKeys.CourseDetails_Test_Community_reply3.tr(),
            ),
            Comment(
              avatar: AppImages.testAvatarAbd,
              userName: LocaleKeys.CourseDetails_Test_Reviews_Names_abd.tr(),
              content: LocaleKeys.CourseDetails_Test_Community_reply4.tr(),
            ),
            Comment(
              avatar: AppImages.emptyAvatar,
              userName: LocaleKeys.CourseDetails_Test_Reviews_Names_ahmad.tr(),
              content: LocaleKeys.CourseDetails_Test_Community_reply5.tr(),
            ),
          ],
        ),
      ],
    );
  }
}
