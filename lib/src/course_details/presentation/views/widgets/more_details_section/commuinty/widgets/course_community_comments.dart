import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/widgets/refresh_base.dart';
import 'package:halim/src/course_details/data/models/comment_model.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';

import '../comments_tree/comments_tree.dart';
import 'enter_comment_bottom_sheet.dart';

class CourseCommunityComments extends StatelessWidget {
  const CourseCommunityComments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CommentModel> comments =
        context.read<CourseDetailsCubit>().comunityComments ?? [];
    context.read<CourseDetailsCubit>().getCourseCommunityComments();

    return RefreshBase(
      onRefresh: () async {
        context.read<CourseDetailsCubit>().getCourseCommunityComments();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 100),
        child: BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
          buildWhen: context
              .read<CourseDetailsCubit>()
              .buildCourseCommunityCommentsWhen,
          listenWhen: (previous, current) {
            return context
                    .read<CourseDetailsCubit>()
                    .listenCourseCommunityCommentsWhen(previous, current) ||
                context
                    .read<CourseDetailsCubit>()
                    .listenPostCommunityCommentWhen(previous, current);
          },
          listener: (context, state) {
            context
                .read<CourseDetailsCubit>()
                .listenCourseCommunityComments(context, state);

            context
                .read<CourseDetailsCubit>()
                .listenPostCommunityComment(context, state);
          },
          builder: (context, state) {
            state.whenOrNull(
              fetchCourseCommunityCommentsSuccess: (data, message) {
                comments = data;
              },
            );
            return context
                .read<CourseDetailsCubit>()
                .buildCourseCommunityComments(
                  context: context,
                  state: state,
                  child: ListView.separated(
                    itemBuilder: (context, index) => CommentsTree(
                      rootComment: comments[index],
                      replies: comments[index].comments ?? [],
                      onReply: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => EnterCommentBottomSheet(
                            replyOnUsername:
                                comments[index].user?.fullName ?? '',
                            onSend: (comment) {
                              context.pop();
                              context
                                  .read<CourseDetailsCubit>()
                                  .postCommunityComment(
                                    content: comment,
                                    repyToId: comments[index].id ?? 0,
                                  );
                            },
                          ),
                        );
                      },
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: comments.length,
                  ),
                );
          },
        ),
      ),
    );
  }
}
