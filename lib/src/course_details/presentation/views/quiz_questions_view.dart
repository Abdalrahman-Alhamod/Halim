import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/functions/show_confirm_dialog.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/widgets/back_arrow_icon.dart';
import '../../../../core/widgets/custome_elevated_button.dart';
import '../../data/models/course_lesson_model.dart';
import '../manager/course_details_cubit/course_details_cubit.dart';
import 'widgets/course_quiz_view/quiz_question_page.dart';
import 'widgets/course_quiz_view/quiz_timeline.dart';
import 'widgets/course_quiz_view/widgets/confirm_quiz_exit_dialog.dart';

class QuizQuestionsView extends StatefulWidget {
  const QuizQuestionsView({super.key, required this.isAnswer});
  final bool isAnswer;
  @override
  State<QuizQuestionsView> createState() => _QuizQuestionsViewState();
}

class _QuizQuestionsViewState extends State<QuizQuestionsView> {
  late final PageController _pageController;
  bool _isFirstQuestion = true;
  bool _isLastQuestion = false;
  int _currentQuesion = 1;
  late List<Question> _questions;
  @override
  void initState() {
    _questions =
        context.read<CourseDetailsCubit>().courseLessonModel?.quiz?.questions ??
            [];
    _pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CourseDetailsCubit, CourseDetailsState>(
      listenWhen:
          context.read<CourseDetailsCubit>().listenCourseLessonCompletionWhen,
      listener:
          context.read<CourseDetailsCubit>().listenCourseLessonQuizCompletion,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: BackArrowIcon(
                      onPressed: () {
                        if (widget.isAnswer) {
                          context.pop();
                        } else {
                          showConfirmQuizExitDialog(context);
                        }
                      },
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    '${LocaleKeys.CourseDetails_Quiz_question.tr()} $_currentQuesion ${context.isEnglish ? '/' : '\\'} ${_questions.length}',
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
            QuizTimeline(
              currentPageIndex: _currentQuesion,
              totalPages: _questions.length,
            ),
            const Spacer(),
            SizedBox(
              height: context.height * 0.7,
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: _questions
                    .map(
                      (question) => QuizQuestionsPage(
                        isAnswered: widget.isAnswer,
                        question: question,
                      ),
                    )
                    .toList(),
                onPageChanged: (value) {
                  setState(() {
                    _currentQuesion = value + 1;
                    _isFirstQuestion = value == 0;
                    _isLastQuestion = value == _questions.length - 1;
                  });
                },
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _isFirstQuestion
                      ? const SizedBox()
                      : CustomElevatedButton(
                          width: context.width * 0.45,
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          title: LocaleKeys.Buttons_previous.tr(),
                        ),
                  const Spacer(),
                  widget.isAnswer && _isLastQuestion
                      ? const SizedBox()
                      : CustomElevatedButton(
                          width: context.width * 0.45,
                          onPressed: () {
                            if (_isLastQuestion) {
                              context
                                  .read<CourseDetailsCubit>()
                                  .submitQuiz(questions: _questions);
                            } else {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          title: _isLastQuestion
                              ? LocaleKeys.Buttons_submit.tr()
                              : LocaleKeys.Buttons_next.tr(),
                        ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  showConfirmQuizExitDialog(BuildContext context) {
    showConfirmDialog(
      context: context,
      onConfirm: () {
        context.read<CourseDetailsCubit>().submitQuiz(questions: _questions);
      },
      widget: const ConfirmQuizExitDialog(),
    );
  }
}
