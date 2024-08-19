import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../account_setup/data/models/student_infomations_model.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  factory UserModel({
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
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
