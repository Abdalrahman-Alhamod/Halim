import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../../shared/model/discount_model.dart';
import '../../../shared/model/subcategory_model.dart';
part 'store_discount_model.freezed.dart';
part 'store_discount_model.g.dart';

@freezed
class StoreDiscountModel with _$StoreDiscountModel {
  const factory StoreDiscountModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'points_cost') int? pointsCost,
    @JsonKey(name: 'discount') DiscountModel? discount,
    @JsonKey(name: 'course') StoreDiscountCourseCard? course,
  }) = _StoreDiscountModel;

  factory StoreDiscountModel.fromJson(Map<String, Object?> json) =>
      _$StoreDiscountModelFromJson(json);
}

@freezed
class StoreDiscountCourseCard with _$StoreDiscountCourseCard {
  const factory StoreDiscountCourseCard({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'mentor') StoreDiscountCourseMentor? mentor,
    @JsonKey(name: 'price') num? price,
    @JsonKey(name: 'subcategory') SubcategoryModel? subcategory,
    @JsonKey(name: 'reviews_avg') int? reviewsAvg,
  }) = _StoreDiscountCourseCard;

  factory StoreDiscountCourseCard.fromJson(Map<String, Object?> json) =>
      _$StoreDiscountCourseCardFromJson(json);
}

@freezed
class StoreDiscountCourseMentor with _$StoreDiscountCourseMentor {
  const StoreDiscountCourseMentor._();
  const factory StoreDiscountCourseMentor({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _StoreDiscountCourseMentor;

  factory StoreDiscountCourseMentor.fromJson(Map<String, Object?> json) =>
      _$StoreDiscountCourseMentorFromJson(json);
  String get fullName => '$firstName $lastName';
}
