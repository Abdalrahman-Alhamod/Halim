import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'lesson_block_model.dart';

part 'lessons_section_model.freezed.dart';
part 'lessons_section_model.g.dart';

@freezed
class LessonsSectionModel with _$LessonsSectionModel {
  const factory LessonsSectionModel({
    int? id,
    String? title,
    String? description,
    @JsonKey(name: 'lessons_count') int? lessonsCount,
    int? duration,
    @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
    List<LessonBlockModel>? lessons,
  }) = _LessonsSectionModel;

  factory LessonsSectionModel.fromJson(Map<String, dynamic> json) =>
      _$LessonsSectionModelFromJson(json);
}

List<LessonBlockModel> _lessonsFromJson(List<dynamic> json) => json
    .map((e) => LessonBlockModel.fromJson(e as Map<String, dynamic>))
    .toList();

List<Map<String, dynamic>> _lessonsToJson(List<LessonBlockModel>? lessons) =>
    lessons?.map((e) => e.toJson()).toList() ?? [];
