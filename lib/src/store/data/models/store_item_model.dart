import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'store_item_model.freezed.dart';
part 'store_item_model.g.dart';

@freezed
class StoreItemModel with _$StoreItemModel {
  const factory StoreItemModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'points_cost') int? pointsCost,
  }) = _StoreItemModel;

  factory StoreItemModel.fromJson(Map<String, Object?> json) =>
      _$StoreItemModelFromJson(json);
}
