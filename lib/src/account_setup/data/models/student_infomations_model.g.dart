// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_infomations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentInfomationsModelImpl _$$StudentInfomationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentInfomationsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      pin: (json['PIN'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      birthDate: json['birth_date'] as String?,
      image: json['image'] as String?,
      phoneNumber: json['phone_number'] as String?,
      educationLevel: json['education_level'] as String?,
      major: json['major'] == null
          ? null
          : Major.fromJson(json['major'] as Map<String, dynamic>),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interests.fromJson(e as Map<String, dynamic>))
          .toList(),
      pointsBalance: (json['points_balance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StudentInfomationsModelImplToJson(
        _$StudentInfomationsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'PIN': instance.pin,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'image': instance.image,
      'phone_number': instance.phoneNumber,
      'education_level': instance.educationLevel,
      'major': instance.major,
      'interests': instance.interests,
      'points_balance': instance.pointsBalance,
    };

_$MajorImpl _$$MajorImplFromJson(Map<String, dynamic> json) => _$MajorImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MajorImplToJson(_$MajorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$InterestsImpl _$$InterestsImplFromJson(Map<String, dynamic> json) =>
    _$InterestsImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$InterestsImplToJson(_$InterestsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
