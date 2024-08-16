// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_points_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentPointsModelImpl _$$StudentPointsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentPointsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      pointsBalance: (json['points_balance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StudentPointsModelImplToJson(
        _$StudentPointsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points_balance': instance.pointsBalance,
    };
