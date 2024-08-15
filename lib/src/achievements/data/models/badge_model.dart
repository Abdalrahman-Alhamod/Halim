import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'badge_model.freezed.dart';
part 'badge_model.g.dart';

@freezed
class BadgeModel with _$BadgeModel {
  const factory BadgeModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'required_number') int? requiredNumber,
    @JsonKey(name: 'number_achieved') int? numberAchieved,
    @JsonKey(name: 'is_earned') bool? isEarned,
  }) = _BadgeModel;

  factory BadgeModel.fromJson(Map<String, Object?> json) =>
      _$BadgeModelFromJson(json);
}
