import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'socket_data_model.freezed.dart';
part 'socket_data_model.g.dart';

@freezed
class SocketDataModel with _$SocketDataModel {
  const factory SocketDataModel({
    @JsonKey(name: 'socket_id') String? socketId,
    @JsonKey(name: 'activity_timeout') int? activityTimeout,
  }) = _SocketDataModel;

  factory SocketDataModel.fromJson(Map<String, dynamic> json) =>
      _$SocketDataModelFromJson(json);
}
