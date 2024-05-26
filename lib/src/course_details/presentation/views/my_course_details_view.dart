import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/widgets/sections_view/data/section_page.dart';
import 'package:halim/core/widgets/sections_view/sections_view.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/commuinty/course_community_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/lessons/course_lessons_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/my_course_details_view/sections/my_course_announcements_section/my_course_announcements_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/my_course_details_view/sections/my_course_certificate_section.dart/my_course_certificate_section.dart';

import '../../../../core/constants/app_constrains.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/widgets/back_arrow_icon.dart';
import '../../../../core/widgets/bottom_sheet_button.dart';
part 'widgets/my_course_details_view/my_course_details_app_bar.dart';
part 'widgets/my_course_details_view/my_course_details_body.dart';
part 'widgets/my_course_details_view/my_course_details_bottom_sheet.dart';

class MyCourseDetailsView extends StatelessWidget {
  const MyCourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _MyCourseDetailsAppBar(),
      body: _MyCourseDetailsBody(),
      // bottomSheet: _MyCourseBottomSheet(),
    );
  }
}
