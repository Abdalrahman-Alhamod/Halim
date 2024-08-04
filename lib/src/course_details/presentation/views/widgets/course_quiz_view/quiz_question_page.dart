import 'package:flutter/material.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../data/models/course_lesson_model.dart';
import '../../../../domain/entities/question_choice_state.dart';
import '../../../../domain/entities/question_type.dart';
import 'question_choice.dart';

class QuizQuestionsPage extends StatefulWidget {
  const QuizQuestionsPage({
    super.key,
    required this.isAnswered,
    required this.question,
  });
  final Question question;
  final bool isAnswered;
  @override
  State<QuizQuestionsPage> createState() => _QuizQuestionsPageState();
}

class _QuizQuestionsPageState extends State<QuizQuestionsPage> {
  late QuestionType _questionType;
  @override
  void initState() {
    switch (widget.question.type) {
      case AppUrl.kCheckbox:
        _questionType = QuestionType.checkbox;
        break;
      case AppUrl.kMultipleChoice:
        _questionType = QuestionType.radio;
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: context.width * 0.90,
          constraints: const BoxConstraints(minHeight: 130),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: context.isDarkMode
                  ? [
                      AppColors.darkColor,
                      AppColors.disabledButtonColor.withAlpha(150),
                      AppColors.darkColor
                    ]
                  : [
                      Colors.blue.shade300,
                      AppColors.primaryColor,
                      Colors.blue.shade300,
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              widget.question.statement ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: context.width * 0.9,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final answer = widget.question.answers?[index] ?? Answer();
              final isAnswerCorrect =
                  widget.question.answers?[index].isCorrect ?? false;
              final isUserAnswer =
                  widget.question.answers?[index].isUserAnswer ?? false;
              return QuestionChoice(
                // state: switch (_questionType) {
                //   QuestionType.checkbox =>
                //     widget.question.correctAnswers != null &&
                //             widget.question.userAnswers != null &&
                //             widget.isAnswered
                //         ? widget.question.correctAnswers!.contains(index)
                //             ? widget.question.userAnswers!.contains(index)
                //                 ? QuestionChoiceState.selectedCorrect
                //                 : QuestionChoiceState.unselectedCorrect
                //             : widget.question.userAnswers!.contains(index)
                //                 ? QuestionChoiceState.wrong
                //                 : QuestionChoiceState.unselected
                //         : _checkBoxes[index]
                //             ? QuestionChoiceState.selected
                //             : QuestionChoiceState.unselected,
                //   QuestionType.radio => widget.isAnswered
                //       ? index == widget.question.correctAnswers![0]
                //           ? QuestionChoiceState.unselectedCorrect
                //           : index == widget.question.userAnswers![0]
                //               ? QuestionChoiceState.wrong
                //               : QuestionChoiceState.unselected
                //       : _selectedChoice == index
                //           ? QuestionChoiceState.selected
                //           : QuestionChoiceState.unselected,
                // },
                state: getQuestionState(
                    isAnswerCorrect: isAnswerCorrect,
                    isUserAnswer: isUserAnswer),
                // state: QuestionChoiceState.selected,
                questionType: _questionType,
                // onPressed: widget.question.correctAnswers != null &&
                //         widget.question.userAnswers != null &&
                //         widget.isAnswered
                //     ? null
                //     : () {
                //         setState(() {
                //           switch (_questionType) {
                //             case QuestionType.checkbox:
                //               _checkBoxes[index] = !_checkBoxes[index];
                //             case QuestionType.radio:
                //               _selectedChoice = index;
                //           }
                //         });
                //       },
                onPressed: widget.isAnswered
                    ? null
                    : () {
                        setState(() {
                          switch (_questionType) {
                            case QuestionType.checkbox:
                              answer.isUserAnswer = !answer.isUserAnswer;
                            case QuestionType.radio:
                              answer.isUserAnswer = true;
                              widget.question.answers?.forEach(
                                (answerItem) {
                                  if (answerItem != answer) {
                                    answerItem.isUserAnswer = false;
                                  }
                                },
                              );
                          }
                        });
                      },
                answer: answer,
              );
            },
            itemCount: widget.question.answers?.length ?? 0,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  QuestionChoiceState getQuestionState({
    required bool isAnswerCorrect,
    required bool isUserAnswer,
  }) {
    if (widget.isAnswered) {
      if (isAnswerCorrect && isUserAnswer) {
        return QuestionChoiceState.selectedCorrect;
      } else if (isAnswerCorrect && !isUserAnswer) {
        return QuestionChoiceState.unselectedCorrect;
      } else if (!isAnswerCorrect && isUserAnswer) {
        return QuestionChoiceState.wrong;
      } else if (!isAnswerCorrect && !isUserAnswer) {
        return QuestionChoiceState.unselected;
      }
    } else {
      if (isUserAnswer) {
        return QuestionChoiceState.selected;
      } else {
        return QuestionChoiceState.unselected;
      }
    }
    return QuestionChoiceState.unselected;
  }
}
