import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/utils/navigation_extra_keys.dart';
import 'package:halim/core/widgets/custome_elevated_button.dart';
import 'package:halim/src/course_details/presentation/views/widgets/course_quiz_view/quiz_details_list_tile.dart';

import '../../domain/entities/quiz_status.dart';
import 'widgets/course_quiz_view/quiz_grade_list_tile.dart';
import 'widgets/course_quiz_view/quiz_status_list_tile.dart';

class QuizFinishView extends StatelessWidget {
  const QuizFinishView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Spacer(),
            Image.asset(
              AppImages.enrollDone,
              width: context.width * 0.65,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              LocaleKeys.CourseDetails_Quiz_quizDone.tr(),
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width / 8),
              child: Column(
                children: [
                  QuizDetailsListTile(
                    icon: Icons.numbers,
                    label: LocaleKeys.CourseDetails_Quiz_totalQuestions.tr(),
                    description: '10',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  QuizDetailsListTile(
                    icon: Icons.done,
                    label: LocaleKeys.CourseDetails_Quiz_correctAnswers.tr(),
                    description: '7',
                    descriptionColor: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  QuizDetailsListTile(
                    icon: Icons.clear,
                    label: LocaleKeys.CourseDetails_Quiz_wrongAnswers.tr(),
                    description: '3',
                    descriptionColor: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  QuizGradeListTile(
                    grade: 85,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  QuizStatusListTile(status: QuizStatus.passed),
                ],
              ),
            ),
            Spacer(
              flex: 5,
            ),
            CustomElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(
                  AppRoute.kQuizQuestionsView,
                  extra: {
                    NavKeys.IsQuizQuestionStateAnswers: true,
                  },
                );
              },
              title: LocaleKeys.CourseDetails_Quiz_seeMyAnswers.tr(),
              backgroundColor: context.isDarkMode
                  ? AppColors.darkFlatButtonColor
                  : AppColors.darkFlatButtonColor.withAlpha(180),
              elevation: 0,
            ),
            SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              onPressed: () {
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
                // GoRouter.of(context).pop();
              },
              title: LocaleKeys.CourseDetails_Quiz_returnToCourse.tr(),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
