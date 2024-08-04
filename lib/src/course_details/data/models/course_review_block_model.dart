import 'package:freezed_annotation/freezed_annotation.dart';
import 'student_card_model.dart';
import 'package:flutter/foundation.dart';
part 'course_review_block_model.freezed.dart';
part 'course_review_block_model.g.dart';

@freezed
class CourseReviewBlockModel with _$CourseReviewBlockModel {
  const factory CourseReviewBlockModel({
    int? id,
    @JsonKey(name: 'student') StudentCardModel? student,
    String? comment,
    int? rating,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'is_reviewed') bool? isReviewed,
  }) = _CourseReviewBlockModel;

  factory CourseReviewBlockModel.fromJson(Map<String, dynamic> json) =>
      _$CourseReviewBlockModelFromJson(json);
}
