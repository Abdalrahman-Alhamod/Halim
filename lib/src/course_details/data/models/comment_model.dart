import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(
      name: 'is_approved',
      fromJson: _boolFromJson,
      toJson: _boolToJson,
    )
    bool? isApproved,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'comments') List<CommentModel>? comments,
    @JsonKey(name: 'user') CommentUser? user,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, Object?> json) =>
      _$CommentModelFromJson(json);
}

bool _boolFromJson(dynamic value) => value == 1;
int _boolToJson(bool? value) => value == true ? 1 : 0;

@freezed
class CommentUser with _$CommentUser {
  const CommentUser._();
  const factory CommentUser({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'image') String? image,
  }) = _CommentUser;

  factory CommentUser.fromJson(Map<String, Object?> json) =>
      _$CommentUserFromJson(json);
  String get fullName => '$firstName $lastName';
}
