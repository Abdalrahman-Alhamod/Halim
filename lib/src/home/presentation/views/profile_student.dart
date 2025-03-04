import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../achievements/presentation/views/widgets/achievemenets_numbers.dart';
import '../../../mentor_details/presentation/views/widgets/sections/mentor_courses_section.dart';

import '../../../../core/constants/app_constrains.dart';
import '../../../../core/widgets/back_arrow_icon.dart';

class ProfileStudentView extends StatelessWidget {
  const ProfileStudentView({super.key});

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
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            AchievementsNumbers(
              rank: '1st',
              points: Random().nextInt(1000),
              totalHours: 683,
              totalCourses: 7,
              contributions: 120,
              monthlyRate: 56.3,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              decoration: const BoxDecoration(
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
                    style: const TextStyle(
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: MentorCoursesSection(),
            ),
          ],
        ),
      ),
    );
  }
}
