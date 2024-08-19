import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'lesson_block_model.freezed.dart';
part 'lesson_block_model.g.dart';

@Freezed(fromJson: false, toJson: true)
class LessonBlockModel with _$LessonBlockModel {
  const factory LessonBlockModel.video(VideoBlockModel video) = _Video;
  const factory LessonBlockModel.reading(ReadingBlockModel reading) = _Reading;
  const factory LessonBlockModel.quiz(QuizBlockModel quiz) = _Quiz;

  factory LessonBlockModel.fromJson(Map<String, dynamic> json) {
    final lessonType = json['lesson_type']['name'] as String?;
    switch (lessonType) {
      case 'video':
        return LessonBlockModel.video(VideoBlockModel.fromJson(json));
      case 'reading':
        return LessonBlockModel.reading(ReadingBlockModel.fromJson(json));
      case 'quiz':
        return LessonBlockModel.quiz(QuizBlockModel.fromJson(json));
      default:
        throw CheckedFromJsonException(
          json,
          'lesson_type',
          'LessonBlockModel',
          'Invalid or missing lesson type',
        );
    }
  }
}

@freezed
class VideoBlockModel with _$VideoBlockModel {
  const factory VideoBlockModel({
    int? id,
    String? title,
    int? duration,
    @JsonKey(name: 'is_completed') bool? isCompleted,
    @JsonKey(
      name: 'is_preview',
    )
    bool? isPreview,
  }) = _VideoBlockModel;

  factory VideoBlockModel.fromJson(Map<String, dynamic> json) =>
      _$VideoBlockModelFromJson(json);
}

@freezed
class ReadingBlockModel with _$ReadingBlockModel {
  const factory ReadingBlockModel({
    int? id,
    String? title,
    int? duration,
    @JsonKey(name: 'is_completed') bool? isCompleted,
    @JsonKey(
      name: 'is_preview',
    )
    bool? isPreview,
  }) = _ReadingBlockModel;

  factory ReadingBlockModel.fromJson(Map<String, dynamic> json) =>
      _$ReadingBlockModelFromJson(json);
}

@freezed
class QuizBlockModel with _$QuizBlockModel {
  const factory QuizBlockModel({
    int? id,
    String? title,
    int? duration,
    @JsonKey(name: 'is_completed') bool? isCompleted,
    @JsonKey(
      name: 'is_preview',
    )
    bool? isPreview,
    @JsonKey(name: 'quiz') QuizBlockDetailsModel? quizDetails,
  }) = _QuizBlockModel;

  factory QuizBlockModel.fromJson(Map<String, dynamic> json) =>
      _$QuizBlockModelFromJson(json);
}

@freezed
class QuizBlockDetailsModel with _$QuizBlockDetailsModel {
  const factory QuizBlockDetailsModel({
    @JsonKey(name: 'questions_number') int? questionsNumber,
  }) = _QuizBlockDetailsModel;

  factory QuizBlockDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$QuizBlockDetailsModelFromJson(json);
}
