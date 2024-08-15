// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievements_summery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AchievementsSummeryModelImpl _$$AchievementsSummeryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementsSummeryModelImpl(
      badgesAchieved: (json['badges_achieved'] as num?)?.toInt(),
      badgesCount: (json['badges_count'] as num?)?.toInt(),
      avatarsAchieved: (json['avatars_achieved'] as num?)?.toInt(),
      avatarCount: (json['avatar_count'] as num?)?.toInt(),
      firstTime: (json['first_time'] as num?)?.toInt(),
      firstTimeCount: (json['first_time_count'] as num?)?.toInt(),
      hours: (json['hours'] as num?)?.toInt(),
      hoursCount: (json['hours_count'] as num?)?.toInt(),
      contributions: (json['contributions'] as num?)?.toInt(),
      contributionsCount: (json['contributions_count'] as num?)?.toInt(),
      courses: (json['courses'] as num?)?.toInt(),
      coursesCount: (json['courses_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AchievementsSummeryModelImplToJson(
        _$AchievementsSummeryModelImpl instance) =>
    <String, dynamic>{
      'badges_achieved': instance.badgesAchieved,
      'badges_count': instance.badgesCount,
      'avatars_achieved': instance.avatarsAchieved,
      'avatar_count': instance.avatarCount,
      'first_time': instance.firstTime,
      'first_time_count': instance.firstTimeCount,
      'hours': instance.hours,
      'hours_count': instance.hoursCount,
      'contributions': instance.contributions,
      'contributions_count': instance.contributionsCount,
      'courses': instance.courses,
      'courses_count': instance.coursesCount,
    };
