import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../domain/entities/question_choice_state.dart';
import '../../../../domain/entities/question_type.dart';
import '../../../../domain/entities/quiz_question.dart';
import 'question_choice.dart';

class QuizQuestionsPage extends StatefulWidget {
  const QuizQuestionsPage(
      {super.key, required this.question, required this.isAnswered});
  final QuizQuestion question;
  final bool isAnswered;
  @override
  State<QuizQuestionsPage> createState() => _QuizQuestionsPageState();
}

class _QuizQuestionsPageState extends State<QuizQuestionsPage> {
  late int _selectedChoice;
  late List<bool> _checkBoxes;
  @override
  void initState() {
    _selectedChoice = -1;
    _checkBoxes = List<bool>.filled(4, false);
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
          constraints: BoxConstraints(minHeight: 130),
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
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(
              widget.question.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: context.width * 0.9,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => QuestionChoice(
              state: switch (widget.question.type) {
                QuestionType.checkbox =>
                  widget.question.correctAnswers != null &&
                          widget.question.userAnswers != null &&
                          widget.isAnswered
                      ? widget.question.correctAnswers!.contains(index)
                          ? widget.question.userAnswers!.contains(index)
                              ? QuestionChoiceState.selectedCorrect
                              : QuestionChoiceState.unselectedCorrect
                          : widget.question.userAnswers!.contains(index)
                              ? QuestionChoiceState.wrong
                              : QuestionChoiceState.unselected
                      : _checkBoxes[index]
                          ? QuestionChoiceState.selected
                          : QuestionChoiceState.unselected,
                QuestionType.radio => widget.question.correctAnswers != null &&
                        widget.question.userAnswers != null &&
                        widget.isAnswered
                    ? index == widget.question.correctAnswers![0]
                        ? QuestionChoiceState.unselectedCorrect
                        : index == widget.question.userAnswers![0]
                            ? QuestionChoiceState.wrong
                            : QuestionChoiceState.unselected
                    : _selectedChoice == index
                        ? QuestionChoiceState.selected
                        : QuestionChoiceState.unselected,
              },
              questionType: widget.question.type,
              onPressed: widget.question.correctAnswers != null &&
                      widget.question.userAnswers != null &&
                      widget.isAnswered
                  ? null
                  : () {
                      setState(() {
                        switch (widget.question.type) {
                          case QuestionType.checkbox:
                            _checkBoxes[index] = !_checkBoxes[index];
                          case QuestionType.radio:
                            _selectedChoice = index;
                        }
                      });
                    },
              title: widget.question.choices[index],
            ),
            itemCount: widget.question.choices.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
