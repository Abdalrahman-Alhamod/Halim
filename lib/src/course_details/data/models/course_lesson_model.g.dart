// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseLessonModelImpl _$$CourseLessonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseLessonModelImpl(
      id: (json['id'] as num?)?.toInt(),
      lessonType: json['lesson_type'] == null
          ? null
          : LessonType.fromJson(json['lesson_type'] as Map<String, dynamic>),
      title: json['title'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isPreview: _boolFromJson(json['is_preview']),
      quiz: json['quiz'] == null
          ? null
          : Quiz.fromJson(json['quiz'] as Map<String, dynamic>),
      isCompleted: json['is_completed'] as bool?,
      video: json['video'] == null
          ? null
          : Video.fromJson(json['video'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : Reading.fromJson(json['reading'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseLessonModelImplToJson(
        _$CourseLessonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lesson_type': instance.lessonType,
      'title': instance.title,
      'duration': instance.duration,
      'is_preview': _boolToJson(instance.isPreview),
      'quiz': instance.quiz,
      'is_completed': instance.isCompleted,
      'video': instance.video,
      'reading': instance.reading,
    };

_$LessonTypeImpl _$$LessonTypeImplFromJson(Map<String, dynamic> json) =>
    _$LessonTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$LessonTypeImplToJson(_$LessonTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      questionsNumber: (json['questions_number'] as num?)?.toInt(),
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastTaken: json['last_taken'] == null
          ? null
          : DateTime.parse(json['last_taken'] as String),
      status: json['status'] as String?,
      grade: json['grade'] as num?,
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'questions_number': instance.questionsNumber,
      'questions': instance.questions,
      'last_taken': instance.lastTaken?.toIso8601String(),
      'status': instance.status,
      'grade': instance.grade,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      statement: json['statement'] as String?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'statement': instance.statement,
      'answers': instance.answers,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: (json['id'] as num?)?.toInt(),
      statement: json['statement'] as String?,
      isCorrect: _boolFromJson(json['is_correct']),
      isUserAnswer: json['isUserAnswer'] as bool? ?? false,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statement': instance.statement,
      'is_correct': _boolToJson(instance.isCorrect),
      'isUserAnswer': instance.isUserAnswer,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      medium: json['medium'] == null
          ? null
          : Medium.fromJson(json['medium'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'notes': instance.notes,
    };

_$MediumImpl _$$MediumImplFromJson(Map<String, dynamic> json) => _$MediumImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      folderId: (json['folder_id'] as num?)?.toInt(),
      videoId: json['video_id'] as String?,
      collectionId: json['collection_id'] as String?,
      playbackUrl: json['playback_url'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      size: json['size'] as String?,
      length: json['length'] as String?,
    );

Map<String, dynamic> _$$MediumImplToJson(_$MediumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'folder_id': instance.folderId,
      'video_id': instance.videoId,
      'collection_id': instance.collectionId,
      'playback_url': instance.playbackUrl,
      'thumbnail_url': instance.thumbnailUrl,
      'size': instance.size,
      'length': instance.length,
    };

_$ReadingImpl _$$ReadingImplFromJson(Map<String, dynamic> json) =>
    _$ReadingImpl(
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ReadingImplToJson(_$ReadingImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
