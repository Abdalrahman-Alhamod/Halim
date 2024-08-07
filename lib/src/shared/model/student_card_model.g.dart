// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentCardModelImpl _$$StudentCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentCardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$StudentCardModelImplToJson(
        _$StudentCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
    };
