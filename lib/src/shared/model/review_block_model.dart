import 'package:freezed_annotation/freezed_annotation.dart';
import 'student_card_model.dart';
import 'package:flutter/foundation.dart';
part 'review_block_model.freezed.dart';
part 'review_block_model.g.dart';

@freezed
class ReviewBlockModel with _$ReviewBlockModel {
  const factory ReviewBlockModel({
    int? id,
    @JsonKey(name: 'student') StudentCardModel? student,
    String? comment,
    int? rating,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'is_reviewed') bool? isReviewed,
  }) = _ReviewBlockModel;

  factory ReviewBlockModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewBlockModelFromJson(json);
}
