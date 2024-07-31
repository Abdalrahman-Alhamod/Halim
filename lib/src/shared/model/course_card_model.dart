import 'package:freezed_annotation/freezed_annotation.dart';
import 'subcategory_model.dart';
import 'discount_model.dart';

part 'course_card_model.freezed.dart';
part 'course_card_model.g.dart';

@freezed
class CourseCardModel with _$CourseCardModel {
  const factory CourseCardModel({
    int? id,
    String? title,
    String? image,
    num? price,
    SubcategoryModel? subcategory,
    @JsonKey(name: 'reviews_avg') num? reviewsAvg,
    @JsonKey(name: 'enrollments_count') int? enrollmentsCount,
    @JsonKey(name: 'is_saved') bool? isSaved,
    DiscountModel? discount,
  }) = _CourseCardModel;

  factory CourseCardModel.fromJson(Map<String, dynamic> json) =>
      _$CourseCardModelFromJson(json);
}
