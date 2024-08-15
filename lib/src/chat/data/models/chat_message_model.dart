import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? createdAt,
    int? sender,
    String? text,
    String? id,
    String? chatId,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

// Custom function to convert the Unix timestamp to DateTime
DateTime? _fromTimestamp(int? timestamp) =>
    timestamp != null ? DateTime.fromMillisecondsSinceEpoch(timestamp) : null;

// Custom function to convert DateTime back to Unix timestamp
int? _toTimestamp(DateTime? date) => date?.millisecondsSinceEpoch;
