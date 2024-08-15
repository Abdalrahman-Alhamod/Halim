// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      createdAt: _fromTimestamp((json['created_at'] as num?)?.toInt()),
      sender: (json['sender'] as num?)?.toInt(),
      text: json['text'] as String?,
      id: json['id'] as String?,
      chatId: json['chatId'] as String?,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'created_at': _toTimestamp(instance.createdAt),
      'sender': instance.sender,
      'text': instance.text,
      'id': instance.id,
      'chatId': instance.chatId,
    };
