import 'package:flutter/material.dart';
import 'package:halim/src/shared/entity/test_user_entity.dart';

@immutable
class TestUserModel extends TestUserEntity {
  TestUserModel({
    super.id,
    super.email,
    super.firstName,
    super.lastName,
    super.avatar,
  });

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  factory TestUserModel.fromJson(Map<String, dynamic> json) => TestUserModel(
        id: json['id'] as int?,
        email: json['email'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        avatar: json['avatar'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar,
      };

  TestUserModel copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    return TestUserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      avatar: avatar ?? this.avatar,
    );
  }
}
