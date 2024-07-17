import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/functions/mix_colors.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../domain/entities/question_choice_state.dart';

Color getColorFromStatus(
    {required QuestionChoiceState state, required BuildContext context}) {
  return switch (state) {
    QuestionChoiceState.selectedCorrect => mixColors([
        Colors.green,
        Colors.green,
        AppColors.primaryColor,
      ]),
    QuestionChoiceState.wrong => Colors.red,
    QuestionChoiceState.selected => AppColors.primaryColor,
    QuestionChoiceState.unselected =>
      context.isDarkMode ? Colors.white : Colors.grey,
    QuestionChoiceState.unselectedCorrect => Colors.green,
  };
}
