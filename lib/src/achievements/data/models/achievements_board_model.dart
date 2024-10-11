import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'avatar_model.dart';
part 'achievements_board_model.freezed.dart';
part 'achievements_board_model.g.dart';

@freezed
class AchievementsBoardModel with _$AchievementsBoardModel {
  const factory AchievementsBoardModel({
    @JsonKey(name: 'avatar') AvatarModel? avatar,
    @JsonKey(name: 'points') int? points,
    @JsonKey(name: 'courses_count') int? coursesCount,
    @JsonKey(name: 'number_of_hours') num? numberOfHours,
    @JsonKey(name: 'contributions') int? contributions,
    @JsonKey(name: 'avg_time') num? avgTime,
    @JsonKey(name: 'rank') String? rank,
  }) = _AchievementsBoardModel;

  factory AchievementsBoardModel.fromJson(Map<String, Object?> json) =>
      _$AchievementsBoardModelFromJson(json);
}
