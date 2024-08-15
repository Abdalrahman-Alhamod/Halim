// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketDataModelImpl _$$SocketDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketDataModelImpl(
      socketId: json['socket_id'] as String?,
      activityTimeout: (json['activity_timeout'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SocketDataModelImplToJson(
        _$SocketDataModelImpl instance) =>
    <String, dynamic>{
      'socket_id': instance.socketId,
      'activity_timeout': instance.activityTimeout,
    };
