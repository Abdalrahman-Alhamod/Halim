import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/helpers/date_time_helper.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/app_route.dart';
import '../manager/course_details_cubit/course_details_cubit.dart';
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
  String _quizTitle = '';
  bool _isStartButtonEnabled = false;
  int _questionNumber = 0;
  QuizStatus _quizStatus = QuizStatus.notTaken;
  num? _grade;
  DateTime? _lastAttempt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CourseQuizAppBar(),
      body: BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
        buildWhen:
            context.read<CourseDetailsCubit>().buildCourseLessonDetailsWhen,
        listenWhen:
            context.read<CourseDetailsCubit>().listenCourseLessonDetailsWhen,
        listener: context.read<CourseDetailsCubit>().listenCourseLessonDetails,
        builder: (context, state) {
          state.whenOrNull(
            fetchCourseLessonDetailsSuccess: (data, message) {
              _questionNumber = data.quiz?.questionsNumber ?? 0;
              _quizTitle = data.title ?? '';
              switch (data.quiz?.status) {
                case AppUrl.kPassed:
                  _quizStatus = QuizStatus.passed;
                  break;
                case AppUrl.kUntaken:
                  _quizStatus = QuizStatus.notTaken;
                  break;
                case AppUrl.kFailed:
                  _quizStatus = QuizStatus.failed;
                  break;
              }
              _grade = data.quiz?.grade;
              _lastAttempt = data.quiz?.lastTaken;
              if (_lastAttempt != null) {
                final duration = DateTime.now().difference(_lastAttempt!).abs();

                if (duration.inHours >= 8) {
                  _isStartButtonEnabled = true;
                }
              } else {
                _isStartButtonEnabled = true;
              }
            },
          );
          return context
              .read<CourseDetailsCubit>()
              .buildCourseLessonDetailsQuiz(
                context: context,
                state: state,
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.pad16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        _quizTitle,
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
                        description: _questionNumber.toString(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      QuizStatusListTile(status: _quizStatus),
                      const SizedBox(
                        height: 10,
                      ),
                      QuizGradeListTile(
                        grade: _grade,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      QuizDetailsListTile(
                        icon: Icons.date_range,
                        label: 'Last attempt',
                        description: _lastAttempt != null
                            ? DateTimeHelper.format(
                                _lastAttempt!, DateTimeFormat.dateAndTime)
                            : '--,--,-- --:--:--',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      QuizDetailsListTile(
                        icon: Icons.warning,
                        label: LocaleKeys.CourseDetails_Quiz_limits.tr(),
                        description: LocaleKeys
                            .CourseDetails_Quiz_attemptEvery8Hours.tr(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      QuizNextAttemptListTile(
                        lastAttemptTime: _lastAttempt,
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
        },
      ),
    );
  }
}
