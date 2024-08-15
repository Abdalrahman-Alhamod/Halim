// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreItemModelImpl _$$StoreItemModelImplFromJson(Map<String, dynamic> json) =>
    _$StoreItemModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      pointsCost: (json['points_cost'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoreItemModelImplToJson(
        _$StoreItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'points_cost': instance.pointsCost,
    };
