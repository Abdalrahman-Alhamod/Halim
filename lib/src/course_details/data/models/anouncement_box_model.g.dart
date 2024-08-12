// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anouncement_box_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementBoxModelImpl _$$AnnouncementBoxModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementBoxModelImpl(
      id: (json['id'] as num?)?.toInt(),
      mentor: json['mentor'] == null
          ? null
          : MentorCardModel.fromJson(json['mentor'] as Map<String, dynamic>),
      title: json['title'] as String?,
      content: json['content'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$AnnouncementBoxModelImplToJson(
        _$AnnouncementBoxModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mentor': instance.mentor,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt?.toIso8601String(),
    };
