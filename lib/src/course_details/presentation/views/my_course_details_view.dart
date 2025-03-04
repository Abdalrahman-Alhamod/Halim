import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../manager/course_details_cubit/course_details_cubit.dart';
import '../../../../core/widgets/sections_view/data/section_page.dart';
import '../../../../core/widgets/sections_view/sections_view.dart';
import 'widgets/more_details_section/commuinty/course_community_section.dart';
import 'widgets/more_details_section/lessons/course_lessons_section_list.dart';
import 'widgets/my_course_details_view/sections/my_course_announcements_section/my_course_announcements_section.dart';
import 'widgets/my_course_details_view/sections/my_course_certificate_section.dart/my_course_certificate_section.dart';

import '../../../../core/constants/app_constrains.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/widgets/back_arrow_icon.dart';
import '../../../../core/widgets/bottom_sheet_button.dart';
part 'widgets/my_course_details_view/my_course_details_app_bar.dart';
part 'widgets/my_course_details_view/my_course_details_body.dart';
part 'widgets/my_course_details_view/my_course_details_bottom_sheet.dart';

class MyCourseDetailsView extends StatelessWidget {
  const MyCourseDetailsView({
    super.key,
    required this.courseId,
    required this.isCompleted, required this.title,
  });
  final int courseId;
  final String title;
  final bool isCompleted;
  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().courseId = courseId;
    return Scaffold(
      appBar:  _MyCourseDetailsAppBar(title),
      body: _MyCourseDetailsBody(isCompleted),
      // bottomSheet: _MyCourseBottomSheet(),
    );
  }
}
