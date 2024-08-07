// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_course_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyCourseCardModelImpl _$$MyCourseCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyCourseCardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      numberOfHours: json['number_of_hours'] as num?,
      lessonsCount: (json['lessons_count'] as num?)?.toInt(),
      completedLessons: (json['completed_lessons'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyCourseCardModelImplToJson(
        _$MyCourseCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'number_of_hours': instance.numberOfHours,
      'lessons_count': instance.lessonsCount,
      'completed_lessons': instance.completedLessons,
    };
