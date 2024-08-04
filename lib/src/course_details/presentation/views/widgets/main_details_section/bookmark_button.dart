import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import '../../../../../home/presentation/views/functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../../core/assets/app_svgs.dart';
import '../../../manager/course_details_cubit/course_details_cubit.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({
    super.key,
    required this.isBookmarked,
    required this.courseCardModel,
  });
  final bool isBookmarked;
  final CourseCardModel courseCardModel;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: (previous, current) => context
          .read<CourseDetailsCubit>()
          .buildSaveCourseWhen(previous, current, courseCardModel.id ?? -1),
      listenWhen: (previous, current) => context
          .read<CourseDetailsCubit>()
          .listenSaveCourseWhen(previous, current, courseCardModel.id ?? -1),
      listener: context.read<CourseDetailsCubit>().listenSaveCourse,
      builder: (context, state) {
        bool isBookmarked = courseCardModel.isSaved ?? false;
        state.whenOrNull(
          saveCourseSuccess: (message, stateCoursId) {
            if (stateCoursId == courseCardModel.id) {
              isBookmarked = true;
            }
          },
          unsaveCourseSuccess: (message, stateCoursId) {
            if (stateCoursId == courseCardModel.id) {
              isBookmarked = false;
            }
          },
        );
        return context.read<CourseDetailsCubit>().buildSaveCourseView(
              context: context,
              state: state,
              child: IconButton(
                  icon: SvgPicture.asset(
                    isBookmarked ? AppSVGs.bookmark : AppSVGs.bookmarkOutlined,
                    width: 46,
                  ),
                  onPressed: () {
                    if (courseCardModel.isSaved ?? false) {
                      showRemoveBookmarkBottomSheet(
                        context: context,
                        courseCardModel: courseCardModel,
                      );
                    } else {
                      context.read<CourseDetailsCubit>().saveCourse(
                            courseId: courseCardModel.id ?? -1,
                          );
                    }
                  }),
            );
      },
    );
  }
}
