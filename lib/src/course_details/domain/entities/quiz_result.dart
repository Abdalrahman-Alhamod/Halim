import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/course_details/domain/entities/quiz_status.dart';
import 'package:flutter/foundation.dart';

part 'quiz_result.freezed.dart';

@freezed
class QuizResult with _$QuizResult {
  const factory QuizResult({
    required int totalQuestions,
    required int correctAnswers,
    required int wrongAnswers,
    required num grade,
    required QuizStatus quizStatus,
  }) = _QuizResult;
}
