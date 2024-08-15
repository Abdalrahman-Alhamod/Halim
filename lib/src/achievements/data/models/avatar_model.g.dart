// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarModelImpl _$$AvatarModelImplFromJson(Map<String, dynamic> json) =>
    _$AvatarModelImpl(
      name: json['name'] as String?,
      image: json['image'] as String?,
      badgesNeeded: (json['badges_needed'] as num?)?.toInt(),
      rewardPoints: (json['reward_points'] as num?)?.toInt(),
      badgesAchieved: (json['badges_achieved'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AvatarModelImplToJson(_$AvatarModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'badges_needed': instance.badgesNeeded,
      'reward_points': instance.rewardPoints,
      'badges_achieved': instance.badgesAchieved,
    };
