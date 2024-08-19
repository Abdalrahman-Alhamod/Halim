import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'course_lesson_model.freezed.dart';
part 'course_lesson_model.g.dart';

@freezed
class CourseLessonModel with _$CourseLessonModel {
  const factory CourseLessonModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'lesson_type') LessonType? lessonType,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(
      name: 'is_preview',
    )
    bool? isPreview,
    @JsonKey(name: 'quiz') Quiz? quiz,
    @JsonKey(name: 'is_completed') bool? isCompleted,
    @JsonKey(name: 'video') Video? video,
    @JsonKey(name: 'reading') Reading? reading,
  }) = _CourseLessonModel;

  factory CourseLessonModel.fromJson(Map<String, Object?> json) =>
      _$CourseLessonModelFromJson(json);
}

@freezed
class LessonType with _$LessonType {
  const factory LessonType({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _LessonType;

  factory LessonType.fromJson(Map<String, Object?> json) =>
      _$LessonTypeFromJson(json);
}

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    @JsonKey(name: 'questions_number') int? questionsNumber,
    @JsonKey(name: 'questions') List<Question>? questions,
    @JsonKey(name: 'last_taken') DateTime? lastTaken,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'grade') num? grade,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'statement') String? statement,
    @JsonKey(name: 'answers') List<Answer>? answers,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}

@unfreezed
class Answer with _$Answer {
   factory Answer({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'statement') String? statement,
    @JsonKey(
      name: 'is_correct',
      fromJson: _boolFromJson,
      toJson: _boolToJson,
    )
    bool? isCorrect,
    @Default(false)
    bool isUserAnswer,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    @JsonKey(name: 'medium') Medium? medium,
    @JsonKey(name: 'notes') String? notes,
  }) = _Video;

  factory Video.fromJson(Map<String, Object?> json) => _$VideoFromJson(json);
}

@freezed
class Medium with _$Medium {
  const factory Medium({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'folder_id') int? folderId,
    @JsonKey(name: 'video_id') String? videoId,
    @JsonKey(name: 'collection_id') String? collectionId,
    @JsonKey(name: 'playback_url') String? playbackUrl,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'size') String? size,
    @JsonKey(name: 'length') String? length,
  }) = _Medium;

  factory Medium.fromJson(Map<String, Object?> json) => _$MediumFromJson(json);
}

@freezed
class Reading with _$Reading {
  const factory Reading({
    @JsonKey(name: 'content') String? content,
  }) = _Reading;

  factory Reading.fromJson(Map<String, Object?> json) =>
      _$ReadingFromJson(json);
}

// Custom functions to handle the conversion between 0/1 and true/false
bool _boolFromJson(dynamic value) => value == 1;
int _boolToJson(bool? value) => value == true ? 1 : 0;
