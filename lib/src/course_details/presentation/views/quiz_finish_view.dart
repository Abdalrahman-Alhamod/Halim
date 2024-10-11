import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/quiz_result.dart';
import '../manager/course_details_cubit/course_details_cubit.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/utils/navigation_extra_keys.dart';
import '../../../../core/widgets/custome_elevated_button.dart';
import 'widgets/course_quiz_view/quiz_details_list_tile.dart';

import '../../domain/entities/quiz_status.dart';
import 'widgets/course_quiz_view/quiz_grade_list_tile.dart';
import 'widgets/course_quiz_view/quiz_status_list_tile.dart';

class QuizFinishView extends StatelessWidget {
  const QuizFinishView({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizResult quizResult =
        context.read<CourseDetailsCubit>().quizResult ??
            const QuizResult(
                totalQuestions: 0,
                correctAnswers: 0,
                wrongAnswers: 0,
                grade: 0,
                quizStatus: QuizStatus.notTaken);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Image.asset(
              AppImages.enrollDone,
              width: context.width * 0.65,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              LocaleKeys.CourseDetails_Quiz_quizDone.tr(),
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width / 8),
              child: Column(
                children: [
                  QuizDetailsListTile(
                    icon: Icons.numbers,
                    label: LocaleKeys.CourseDetails_Quiz_totalQuestions.tr(),
                    description: quizResult.totalQuestions.toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  QuizDetailsListTile(
                    icon: Icons.done,
                    label: LocaleKeys.CourseDetails_Quiz_correctAnswers.tr(),
                    description: quizResult.correctAnswers.toString(),
                    descriptionColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  QuizDetailsListTile(
                    icon: Icons.clear,
                    label: LocaleKeys.CourseDetails_Quiz_wrongAnswers.tr(),
                    description: quizResult.wrongAnswers.toString(),
                    descriptionColor: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  QuizGradeListTile(
                    grade: quizResult.grade,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  QuizStatusListTile(status: quizResult.quizStatus),
                ],
              ),
            ),
            const Spacer(
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
            const SizedBox(
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
