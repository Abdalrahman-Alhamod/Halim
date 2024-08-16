import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'student_infomations_model.freezed.dart';
part 'student_infomations_model.g.dart';

@unfreezed
class StudentInfomationsModel with _$StudentInfomationsModel {
  factory StudentInfomationsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'PIN') int? pin,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'education_level') String? educationLevel,
    @JsonKey(name: 'major') Major? major,
    @JsonKey(name: 'interests') List<Interests>? interests,
    @JsonKey(name: 'points_balance') int? pointsBalance,
  }) = _StudentInfomationsModel;

  factory StudentInfomationsModel.fromJson(Map<String, Object?> json) =>
      _$StudentInfomationsModelFromJson(json);
}

@unfreezed
class Major with _$Major {
  factory Major({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Major;

  factory Major.fromJson(Map<String, Object?> json) => _$MajorFromJson(json);
}

@unfreezed
class Interests with _$Interests {
  factory Interests({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Interests;

  factory Interests.fromJson(Map<String, Object?> json) =>
      _$InterestsFromJson(json);
}
