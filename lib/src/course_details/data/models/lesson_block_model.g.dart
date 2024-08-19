// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_block_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'video': instance.video,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$$ReadingImplToJson(_$ReadingImpl instance) =>
    <String, dynamic>{
      'reading': instance.reading,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'quiz': instance.quiz,
      'runtimeType': instance.$type,
    };

_$VideoBlockModelImpl _$$VideoBlockModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoBlockModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isCompleted: json['is_completed'] as bool?,
      isPreview: json['is_preview'] as bool?,
    );

Map<String, dynamic> _$$VideoBlockModelImplToJson(
        _$VideoBlockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'is_completed': instance.isCompleted,
      'is_preview': instance.isPreview,
    };

_$ReadingBlockModelImpl _$$ReadingBlockModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingBlockModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isCompleted: json['is_completed'] as bool?,
      isPreview: json['is_preview'] as bool?,
    );

Map<String, dynamic> _$$ReadingBlockModelImplToJson(
        _$ReadingBlockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'is_completed': instance.isCompleted,
      'is_preview': instance.isPreview,
    };

_$QuizBlockModelImpl _$$QuizBlockModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizBlockModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isCompleted: json['is_completed'] as bool?,
      isPreview: json['is_preview'] as bool?,
      quizDetails: json['quiz'] == null
          ? null
          : QuizBlockDetailsModel.fromJson(
              json['quiz'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuizBlockModelImplToJson(
        _$QuizBlockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'is_completed': instance.isCompleted,
      'is_preview': instance.isPreview,
      'quiz': instance.quizDetails,
    };

_$QuizBlockDetailsModelImpl _$$QuizBlockDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizBlockDetailsModelImpl(
      questionsNumber: (json['questions_number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuizBlockDetailsModelImplToJson(
        _$QuizBlockDetailsModelImpl instance) =>
    <String, dynamic>{
      'questions_number': instance.questionsNumber,
    };
