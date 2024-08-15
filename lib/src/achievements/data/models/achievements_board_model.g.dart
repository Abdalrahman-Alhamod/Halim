// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievements_board_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AchievementsBoardModelImpl _$$AchievementsBoardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementsBoardModelImpl(
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      points: (json['points'] as num?)?.toInt(),
      coursesCount: (json['courses_count'] as num?)?.toInt(),
      numberOfHours: json['number_of_hours'] as num?,
      contributions: (json['contributions'] as num?)?.toInt(),
      avgTime: json['avg_time'] as num?,
      rank: json['rank'] as String?,
    );

Map<String, dynamic> _$$AchievementsBoardModelImplToJson(
        _$AchievementsBoardModelImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'points': instance.points,
      'courses_count': instance.coursesCount,
      'number_of_hours': instance.numberOfHours,
      'contributions': instance.contributions,
      'avg_time': instance.avgTime,
      'rank': instance.rank,
    };
