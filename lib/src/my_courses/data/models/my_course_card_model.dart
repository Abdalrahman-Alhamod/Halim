import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'my_course_card_model.freezed.dart';
part 'my_course_card_model.g.dart';

@freezed
class MyCourseCardModel with _$MyCourseCardModel {
  const factory MyCourseCardModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'number_of_hours') num? numberOfHours,
    @JsonKey(name: 'lessons_count') int? lessonsCount,
    @JsonKey(name: 'completed_lessons') int? completedLessons,
  }) = _MyCourseCardModel;

  factory MyCourseCardModel.fromJson(Map<String, Object?> json) =>
      _$MyCourseCardModelFromJson(json);
}
