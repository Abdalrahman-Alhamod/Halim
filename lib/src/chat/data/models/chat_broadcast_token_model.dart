import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'chat_broadcast_token_model.freezed.dart';
part 'chat_broadcast_token_model.g.dart';

@freezed
class ChatBroadcastTokenModel with _$ChatBroadcastTokenModel {
  const factory ChatBroadcastTokenModel({
    @JsonKey(name: 'auth') String? auth,
  }) = _ChatBroadcastTokenModel;

  factory ChatBroadcastTokenModel.fromJson(Map<String, Object?> json) =>
      _$ChatBroadcastTokenModelFromJson(json);
}
