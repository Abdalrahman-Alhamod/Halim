// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lessons_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonsSectionModelImpl _$$LessonsSectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonsSectionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      lessonsCount: (json['lessons_count'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      lessons: _lessonsFromJson(json['lessons'] as List),
    );

Map<String, dynamic> _$$LessonsSectionModelImplToJson(
        _$LessonsSectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'lessons_count': instance.lessonsCount,
      'duration': instance.duration,
      'lessons': _lessonsToJson(instance.lessons),
    };
