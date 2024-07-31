// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorCardModelImpl _$$MentorCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MentorCardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as String?,
      headline: json['headline'] as String?,
    );

Map<String, dynamic> _$$MentorCardModelImplToJson(
        _$MentorCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
      'headline': instance.headline,
    };
