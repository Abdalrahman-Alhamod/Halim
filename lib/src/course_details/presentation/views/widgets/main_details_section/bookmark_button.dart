import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../shared/model/course_card_model.dart';
import '../../../../../home/presentation/views/functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../../core/assets/app_svgs.dart';
import '../../../manager/course_details_cubit/course_details_cubit.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({
    super.key,
    required this.isBookmarked,
    required this.courseCardModel,
  });
  final bool isBookmarked;
  final CourseCardModel courseCardModel;

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  late CourseCardModel courseCardModel;
  @override
  void initState() {
    courseCardModel = widget.courseCardModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: (previous, current) => context
          .read<CourseDetailsCubit>()
          .buildSaveCourseWhen(
              previous, current, widget.courseCardModel.id ?? -1),
      listenWhen: (previous, current) => context
          .read<CourseDetailsCubit>()
          .listenSaveCourseWhen(
              previous, current, widget.courseCardModel.id ?? -1),
      listener: context.read<CourseDetailsCubit>().listenSaveCourse,
      builder: (context, state) {
        bool isBookmarked = widget.courseCardModel.isSaved ?? false;
        state.whenOrNull(
          saveCourseSuccess: (message, stateCoursId) {
            if (stateCoursId == widget.courseCardModel.id) {
              isBookmarked = true;
              courseCardModel = widget.courseCardModel.copyWith(isSaved: true);
            }
          },
          unsaveCourseSuccess: (message, stateCoursId) {
            if (stateCoursId == widget.courseCardModel.id) {
              isBookmarked = false;
              courseCardModel = widget.courseCardModel.copyWith(isSaved: false);
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
                        courseCardModel: widget.courseCardModel,
                      );
                    } else {
                      context.read<CourseDetailsCubit>().saveCourse(
                            courseId: widget.courseCardModel.id ?? -1,
                          );
                    }
                  }),
            );
      },
    );
  }
}
