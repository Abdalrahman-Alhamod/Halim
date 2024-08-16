// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      value: json['value'] as num?,
      code: json['code'] as String?,
      startsAt: json['starts_at'] == null
          ? null
          : DateTime.parse(json['starts_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      amountAvailable: (json['amount_available'] as num?)?.toInt(),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'value': instance.value,
      'code': instance.code,
      'starts_at': instance.startsAt?.toIso8601String(),
      'ends_at': instance.endsAt?.toIso8601String(),
      'amount_available': instance.amountAvailable,
      'discount_type': instance.discountType,
    };
