import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'achievements_summery_model.freezed.dart';
part 'achievements_summery_model.g.dart';

@freezed
class AchievementsSummeryModel with _$AchievementsSummeryModel {
  const factory AchievementsSummeryModel({
    @JsonKey(name: 'badges_achieved') int? badgesAchieved,
    @JsonKey(name: 'badges_count') int? badgesCount,
    @JsonKey(name: 'avatars_achieved') int? avatarsAchieved,
    @JsonKey(name: 'avatar_count') int? avatarCount,
    @JsonKey(name: 'first_time') int? firstTime,
    @JsonKey(name: 'first_time_count') int? firstTimeCount,
    @JsonKey(name: 'hours') int? hours,
    @JsonKey(name: 'hours_count') int? hoursCount,
    @JsonKey(name: 'contributions') int? contributions,
    @JsonKey(name: 'contributions_count') int? contributionsCount,
    @JsonKey(name: 'courses') int? courses,
    @JsonKey(name: 'courses_count') int? coursesCount,
  }) = _AchievementsSummeryModel;

  factory AchievementsSummeryModel.fromJson(Map<String, Object?> json) =>
      _$AchievementsSummeryModelFromJson(json);
}
