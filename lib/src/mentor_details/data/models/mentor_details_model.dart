import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'mentor_details_model.freezed.dart';
part 'mentor_details_model.g.dart';

@freezed
class MentorDetailsModel with _$MentorDetailsModel {
  const MentorDetailsModel._();
  const factory MentorDetailsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'enrollments_number') int? enrollmentsNumber,
    @JsonKey(name: 'headline') String? headline,
    @JsonKey(name: 'experience') String? experience,
    @JsonKey(name: 'about') String? about,
    @JsonKey(name: 'courses_count') int? coursesCount,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'reviews_avg') num? reviewsAvg,
    
  }) = _MentorDetailsModel;

  factory MentorDetailsModel.fromJson(Map<String, Object?> json) =>
      _$MentorDetailsModelFromJson(json);

  String get fullName => '$firstName $lastName';
}
