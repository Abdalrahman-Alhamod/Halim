// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_about_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseAboutSectionModelImpl _$$CourseAboutSectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseAboutSectionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      description: json['description'] as String?,
      mentor: json['mentor'] == null
          ? null
          : MentorCardModel.fromJson(json['mentor'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => KeywordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseAboutSectionModelImplToJson(
        _$CourseAboutSectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'mentor': instance.mentor,
      'keywords': instance.keywords,
    };
