import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'level_model.freezed.dart';
part 'level_model.g.dart';

@freezed
class LevelModel with _$LevelModel {
  const factory LevelModel({
    int? id,
    String? name,
  }) = _LevelModel;

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}
