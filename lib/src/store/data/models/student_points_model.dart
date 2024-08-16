import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'student_points_model.freezed.dart';
part 'student_points_model.g.dart';

@freezed
class StudentPointsModel with _$StudentPointsModel {
  const factory StudentPointsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'points_balance') int? pointsBalance,
  }) = _StudentPointsModel;

  factory StudentPointsModel.fromJson(Map<String, Object?> json) =>
      _$StudentPointsModelFromJson(json);
}
