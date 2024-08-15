import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'avatar_model.freezed.dart';
part 'avatar_model.g.dart';

@freezed
class AvatarModel with _$AvatarModel {
  const factory AvatarModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'badges_needed') int? badgesNeeded,
    @JsonKey(name: 'reward_points') int? rewardPoints,
    @JsonKey(name: 'badges_achieved') int? badgesAchieved,
  }) = _AvatarModel;

  factory AvatarModel.fromJson(Map<String, Object?> json) =>
      _$AvatarModelFromJson(json);
}
