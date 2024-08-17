import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';
part 'receipt_model.freezed.dart';
part 'receipt_model.g.dart';

@freezed
class ReceiptModel with _$ReceiptModel {
  const factory ReceiptModel({
    @JsonKey(name: 'user') ReceiptUserModel? user,
    @JsonKey(name: 'course') ReceiptCourseModel? course,
    @JsonKey(name: 'price_before_discount') num? priceBeforeDiscount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, Object?> json) =>
      _$ReceiptModelFromJson(json);
}

@freezed
class ReceiptUserModel with _$ReceiptUserModel {
  const factory ReceiptUserModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
  }) = _ReceiptUserModel;

  factory ReceiptUserModel.fromJson(Map<String, Object?> json) => _$ReceiptUserModelFromJson(json);
}

@freezed
class ReceiptCourseModel with _$ReceiptCourseModel {
  const factory ReceiptCourseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'price') num? price,
    @JsonKey(name: 'subcategory') SubcategoryModel? subcategory,
  }) = _ReceiptCourseModel;

  factory ReceiptCourseModel.fromJson(Map<String, Object?> json) => _$ReceiptCourseModelFromJson(json);
}
