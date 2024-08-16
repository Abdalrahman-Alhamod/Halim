import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'value') num? value,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'starts_at') DateTime? startsAt,
    @JsonKey(name: 'ends_at') DateTime? endsAt,
    @JsonKey(name: 'amount_available') int? amountAvailable,
    @JsonKey(name: 'discount_type') String? discountType,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, Object?> json) =>
      _$DiscountModelFromJson(json);
}
