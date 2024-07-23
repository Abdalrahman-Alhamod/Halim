import 'package:flutter/material.dart';

import '../../../../domain/entities/question_choice_state.dart';
import '../../../../domain/entities/question_type.dart';
import 'helpers/get_color_from_status.dart';

class QuestionChoice extends StatelessWidget {
  const QuestionChoice({
    super.key,
    required this.state,
    this.onPressed,
    required this.questionType,
    required this.title,
  });
  final String title;
  final QuestionChoiceState state;
  final void Function()? onPressed;
  final QuestionType questionType;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 24,
        ),
        fixedSize: const Size.fromHeight(80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
          side: BorderSide(
            color: getColorFromStatus(state: state, context: context),
          ),
        ),
        backgroundColor:
            getColorFromStatus(state: state, context: context).withAlpha(20),
        foregroundColor: getColorFromStatus(state: state, context: context),
        shadowColor:
            getColorFromStatus(state: state, context: context).withAlpha(20),
        disabledBackgroundColor:
            getColorFromStatus(state: state, context: context).withAlpha(20),
      ),
      child: Row(
        children: [
          switch (questionType) {
            QuestionType.checkbox => Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  value: state != QuestionChoiceState.unselected,
                  onChanged: (value) {},
                  fillColor: WidgetStatePropertyAll(
                    getColorFromStatus(
                      state: state,
                      context: context,
                    ),
                  ),
                ),
              ),
            QuestionType.radio => Transform.scale(
                scale: 1.2,
                child: Radio(
                  value: state != QuestionChoiceState.unselected,
                  groupValue: true,
                  onChanged: (value) {},
                  fillColor: WidgetStatePropertyAll(
                    getColorFromStatus(
                      state: state,
                      context: context,
                    ),
                  ),
                  
                ),
              ),
          },
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
