import 'package:freezed_annotation/freezed_annotation.dart';
import 'subscription_data_model.dart';
import 'package:flutter/foundation.dart';
part 'subscription_message_model.freezed.dart';
part 'subscription_message_model.g.dart';

@freezed
class SubscriptionMessageModel with _$SubscriptionMessageModel {
  const factory SubscriptionMessageModel({
     String? event,
     SubscriptionDataModel? data,
  }) = _SubscriptionMessageModel;

  factory SubscriptionMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMessageModelFromJson(json);
}
