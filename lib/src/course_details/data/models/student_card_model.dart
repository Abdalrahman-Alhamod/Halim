import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'student_card_model.freezed.dart';
part 'student_card_model.g.dart';

@freezed
class StudentCardModel with _$StudentCardModel {
  const factory StudentCardModel({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? image,
  }) = _StudentCardModel;

  factory StudentCardModel.fromJson(Map<String, dynamic> json) =>
      _$StudentCardModelFromJson(json);
}
