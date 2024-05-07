import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
import 'package:halim/core/test/test_course.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/widgets/custome_elevated_button.dart';

import '../../../../core/translations/local_keys.g.dart';
import 'widgets/more_details_section/lessons/course_reading_app_bar.dart';

class CourseReadingView extends StatelessWidget {
  const CourseReadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CourseReadingAppBar(),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withAlpha(30),
        ),
        child: Column(
          children: [
            Expanded(
              child: HtmlContentViewer(
                htmlContent: TestCourse.readingHTML,
                initialContentHeight: MediaQuery.of(context).size.height,
                initialContentWidth: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24,
              ),
              child: CustomElevatedButton(
                onPressed: () {},
                title: LocaleKeys.Buttons_next.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
