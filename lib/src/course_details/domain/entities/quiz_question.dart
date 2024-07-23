import 'question_type.dart';

class QuizQuestion {
  final String title;
  final List<String> choices;
  final QuestionType type;
  final List<int>? userAnswers;
  final List<int>? correctAnswers;

  QuizQuestion({
    required this.title,
    required this.choices,
    required this.type,
    this.userAnswers,
    this.correctAnswers,
  });
}
