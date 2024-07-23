import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/app_route.dart';
import 'widgets/course_quiz_view/course_quiz_app_bar.dart';

import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/navigation_extra_keys.dart';
import '../../domain/entities/quiz_status.dart';
import 'widgets/course_quiz_view/quiz_details_list_tile.dart';
import 'widgets/course_quiz_view/quiz_grade_list_tile.dart';
import 'widgets/course_quiz_view/quiz_next_attempt_list_tile.dart';
import 'widgets/course_quiz_view/quiz_start_button.dart';
import 'widgets/course_quiz_view/quiz_status_list_tile.dart';

class CourseQuizView extends StatefulWidget {
  const CourseQuizView({super.key});

  @override
  State<CourseQuizView> createState() => _CourseQuizViewState();
}

class _CourseQuizViewState extends State<CourseQuizView> {
  bool _isStartButtonEnabled = false;
  late final DateTime _lastAttemptTime;
  @override
  void initState() {
    _lastAttemptTime = DateTime.now().subtract(
      const Duration(
        hours: 7,
        minutes: 59,
        seconds: 50,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CourseQuizAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.pad16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              LocaleKeys.CourseDetails_Test_Lessons_title6.tr(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            QuizDetailsListTile(
              icon: Icons.help,
              label: LocaleKeys.CourseDetails_Quiz_questions.tr(),
              description: '10',
            ),
            const SizedBox(
              height: 10,
            ),
            const QuizStatusListTile(status: QuizStatus.passed),
            const SizedBox(
              height: 10,
            ),
            const QuizGradeListTile(
              grade: 85,
            ),
            const SizedBox(
              height: 10,
            ),
            QuizDetailsListTile(
              icon: Icons.warning,
              label: LocaleKeys.CourseDetails_Quiz_limits.tr(),
              description:
                  LocaleKeys.CourseDetails_Quiz_attemptEvery8Hours.tr(),
            ),
            const SizedBox(
              height: 10,
            ),
            QuizNextAttemptListTile(
              lastAttemptTime: _lastAttemptTime,
              onCounterDone: () {
                setState(() {
                  _isStartButtonEnabled = true;
                });
              },
            ),
            const Spacer(),
            QuizStartButton(
              onPressed: _isStartButtonEnabled
                  ? () {
                      GoRouter.of(context).push(
                        AppRoute.kQuizQuestionsView,
                        extra: {
                          NavKeys.IsQuizQuestionStateAnswers: false,
                        },
                      );
                    }
                  : null,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
