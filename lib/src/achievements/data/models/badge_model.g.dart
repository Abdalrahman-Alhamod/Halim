// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BadgeModelImpl _$$BadgeModelImplFromJson(Map<String, dynamic> json) =>
    _$BadgeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      requiredNumber: (json['required_number'] as num?)?.toInt(),
      numberAchieved: (json['number_achieved'] as num?)?.toInt(),
      isEarned: json['is_earned'] as bool?,
    );

Map<String, dynamic> _$$BadgeModelImplToJson(_$BadgeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'required_number': instance.requiredNumber,
      'number_achieved': instance.numberAchieved,
      'is_earned': instance.isEarned,
    };
