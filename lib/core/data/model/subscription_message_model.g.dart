// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionMessageModelImpl _$$SubscriptionMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionMessageModelImpl(
      event: json['event'] as String?,
      data: json['data'] == null
          ? null
          : SubscriptionDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionMessageModelImplToJson(
        _$SubscriptionMessageModelImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
