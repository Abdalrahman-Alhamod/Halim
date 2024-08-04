import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../../shared/model/discount_model.dart';
import '../../../shared/model/subcategory_model.dart';
import 'level_model.dart';

part 'course_main_section_model.freezed.dart';
part 'course_main_section_model.g.dart';

@freezed
class CourseMainSectionModel with _$CourseMainSectionModel {
  const factory CourseMainSectionModel({
    int? id,
    String? title,
    String? image,
    num? price,
    String? intro,
    @JsonKey(name: 'number_of_hours') num? numberOfHours,
    SubcategoryModel? subcategory,
    LevelModel? level,
    @JsonKey(name: 'enrollments_count') int? enrollmentsCount,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'reviews_avg') num? reviewsAvg,
    @JsonKey(name: 'is_saved') bool? isSaved,
    @JsonKey(name: 'is_enrolled') bool? isEnrolled,
    @JsonKey(name: 'lessons_count') int? lessonsCount,
    @JsonKey(name: 'sections_count') int? sectionsCount,
    DiscountModel? discount,
  }) = _CourseMainSectionModel;

  factory CourseMainSectionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseMainSectionModelFromJson(json);
}
