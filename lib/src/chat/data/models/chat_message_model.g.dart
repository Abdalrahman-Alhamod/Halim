// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      createdAt: _fromTimestamp((json['created_at'] as num?)?.toInt()),
      senderId: (json['sender_id'] as num?)?.toInt(),
      content: json['content'] as String?,
      id: json['id'] as String?,
      chatId: json['chatId'] as String?,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'created_at': _toTimestamp(instance.createdAt),
      'sender_id': instance.senderId,
      'content': instance.content,
      'id': instance.id,
      'chatId': instance.chatId,
    };
