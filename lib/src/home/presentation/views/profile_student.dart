import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/sections_view/data/section_page.dart';
import 'package:halim/core/widgets/sections_view/sections_view.dart';
import 'package:halim/src/achievements/presentation/views/widgets/achievemenets_numbers.dart';
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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  "${LocaleKeys.StudentProfile_Student.tr()} ${LocaleKeys.StudentProfile_Test.tr()} ",
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
            AchievementsNumbers(
              rank: Random().nextInt(20),
              points: Random().nextInt(1000),
              totalHours: 683,
              totalCourses: 7,
              contributions: 120,
              monthlyRate: 56.3,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                horizontal: BorderSide(
                  color: AppColors.primaryColor,
                  width: 3.5,
                ),
              )),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    LocaleKeys.StudentProfile_FollowCourses.tr(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: MentorCoursesSection(),
            ),
          ],
        ),
      ),
    );
  }
}
