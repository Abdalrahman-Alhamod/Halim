import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../achievements/presentation/views/widgets/achievemenets_numbers.dart';
import '../../../course_details/presentation/views/widgets/mentor_details_view.dart/sections/mentor_courses_section.dart';

class ProfileStudentPersonalView extends StatelessWidget {
  const ProfileStudentPersonalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 28,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit,
                size: 28,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kEditProfile);
              },
            ),
          ],
        ),
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
              rank: Random().nextInt(20),
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
