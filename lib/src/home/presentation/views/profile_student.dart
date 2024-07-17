import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/sections_view/data/section_page.dart';
import 'package:halim/core/widgets/sections_view/sections_view.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/sections/mentor_courses_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/widgets/mentor_main_details_vertical_divider.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/widgets/mentor_main_details_vertical_info.dart';

import '../../../../core/constants/app_constrains.dart';
import '../../../../core/widgets/back_arrow_icon.dart';

class profileStudentView extends StatelessWidget {
  const profileStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackArrowIcon(
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        leadingWidth: AppConstrains.maxWidthAppBarIcon,
        toolbarHeight: AppConstrains.maxWidthAppBarIcon,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.testMentor),
                  radius: 70,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'طالب لدى علوم الحاسب',
                  style: TextStyle(
                    fontSize: 18,
                    color: context.isDarkMode
                        ? Colors.grey.shade400
                        : Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MentorMainDetailsVerticalInfo(
                          num: '25',
                          label: 'الدورات المتابعة حالياً',
                        ),
                        // const MentorMainDetailsVerticalDivider(),
                        // MentorMainDetailsVerticalInfo(
                        //   num: '22,379',
                        //   label: LocaleKeys.CourseDetails_students.tr(),
                        // ),
                        const MentorMainDetailsVerticalDivider(),
                        MentorMainDetailsVerticalInfo(
                          num: '46 سا',
                          label: 'ساعات الإنجاز الشهري',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                color: context.isDarkMode
                    ? Colors.grey.shade800
                    : Colors.grey.shade900,
              ),
            ),
            MentorCoursesSection(),
            Container(width: 40,height: 22,child: Text('الدورات المتابعة'),),
            SectionsView(
              pages: [
                SectionPage(
                  title: LocaleKeys.CourseDetails_Mentor_courses.tr(),
                  child: const MentorCoursesSection(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
