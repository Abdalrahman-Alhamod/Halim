import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/widgets/back_arrow_icon.dart';
import '../../../../core/widgets/custome_elevated_button.dart';
import '../../domain/entities/question_type.dart';
import '../../domain/entities/quiz_question.dart';
import 'widgets/course_quiz_view/quiz_question_page.dart';
import 'widgets/course_quiz_view/quiz_timeline.dart';

class QuizQuestionsView extends StatefulWidget {
  const QuizQuestionsView({super.key, required this.isAnswer});
  final bool isAnswer;
  @override
  State<QuizQuestionsView> createState() => _QuizQuestionsViewState();
}

class _QuizQuestionsViewState extends State<QuizQuestionsView> {
  late List<QuizQuestionsPage> _questions;
  late final PageController _pageController;
  bool _isFirstQuestion = true;
  bool _isLastQuestion = false;
  int _currentQuesion = 1;
  @override
  void initState() {
    _questions = [
      QuizQuestionsPage(
        question: QuizQuestion(
          title: LocaleKeys.CourseDetails_Test_Quiz_question1.tr(),
          choices: [
            LocaleKeys.CourseDetails_Test_Quiz_choice11.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice12.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice13.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice14.tr()
          ],
          type: QuestionType.radio,
          userAnswers: [1],
          correctAnswers: [1],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: LocaleKeys.CourseDetails_Test_Quiz_question2.tr(),
          choices: [
            LocaleKeys.CourseDetails_Test_Quiz_choice21.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice22.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice23.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice24.tr()
          ],
          type: QuestionType.checkbox,
          userAnswers: [0, 1, 2, 3],
          correctAnswers: [0, 1, 2, 3],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: LocaleKeys.CourseDetails_Test_Quiz_question3.tr(),
          choices: [
            LocaleKeys.CourseDetails_Test_Quiz_choice31.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice32.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice33.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice34.tr()
          ],
          type: QuestionType.radio,
          userAnswers: [2],
          correctAnswers: [3],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: LocaleKeys.CourseDetails_Test_Quiz_question4.tr(),
          choices: [
            LocaleKeys.CourseDetails_Test_Quiz_choice41.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice42.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice43.tr(),
            LocaleKeys.CourseDetails_Test_Quiz_choice44.tr()
          ],
          type: QuestionType.checkbox,
          userAnswers: [0, 3],
          correctAnswers: [1, 2, 0],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: 'Which plugin is used to generate placeholder text?',
          choices: [
            'Content Reel',
            'Lorem Ipsum',
            'Text Autofill',
            'Content Generator'
          ],
          type: QuestionType.radio,
          userAnswers: [2],
          correctAnswers: [1],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: 'Which plugin helps in managing color styles?',
          choices: [
            'Color Manager',
            'Style Organizer',
            'Color Palette',
            'Color Master'
          ],
          type: QuestionType.radio,
          userAnswers: [2],
          correctAnswers: [0],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: 'Select the tools commonly found in Figma plugins:',
          choices: [
            'Icons',
            'Stock Photos',
            'Illustrations',
            'All of the above'
          ],
          type: QuestionType.checkbox,
          userAnswers: [0, 1],
          correctAnswers: [0, 1, 2, 3],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: 'Which plugin can be used to create data visualizations?',
          choices: ['Chart', 'Graph', 'DataViz', 'Graph Master'],
          type: QuestionType.radio,
          userAnswers: [3],
          correctAnswers: [0],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title: 'Which plugin helps in finding free images?',
          choices: ['Unsplash', 'Pexels', 'Pixabay', 'All of the above'],
          type: QuestionType.checkbox,
          userAnswers: [0, 1, 3],
          correctAnswers: [0, 1, 2],
        ),
        isAnswered: widget.isAnswer,
      ),
      QuizQuestionsPage(
        question: QuizQuestion(
          title:
              'Which of the following plugins can help with accessibility checks?',
          choices: [
            'Contrast Checker',
            'Color Blindness Simulator',
            'Accessibility Insights',
            'All of the above'
          ],
          type: QuestionType.checkbox,
          userAnswers: [1, 2],
          correctAnswers: [0, 1, 2, 3],
        ),
        isAnswered: widget.isAnswer,
      ),
    ];
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
    return Scaffold(
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
                    onPressed: () => GoRouter.of(context).pop(),
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
              children: _questions,
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
                            GoRouter.of(context)
                                .pushReplacement(AppRoute.kQuizFinishView);
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
    );
  }
}
