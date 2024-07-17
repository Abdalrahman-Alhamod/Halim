import 'package:flutter/material.dart';
// import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
// import 'package:halim/core/test/test_course.dart';

import 'widgets/course_reading_view/course_reading_app_bar.dart';

class CourseReadingView extends StatelessWidget {
  const CourseReadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CourseReadingAppBar(),
      // bottomSheet: BottomSheetButton(
      //   title: LocaleKeys.Buttons_next.tr(),
      //   onPressed: () {},
      // ),
      body: const Center(
        child: Text('HTML CONTENT'),
      ),
    );
  }
}
