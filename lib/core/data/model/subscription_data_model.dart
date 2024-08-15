import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'subscription_data_model.freezed.dart';
part 'subscription_data_model.g.dart';

@freezed
class SubscriptionDataModel with _$SubscriptionDataModel {
  const factory SubscriptionDataModel({
     String? auth,
     String? channel,
  }) = _SubscriptionDataModel;

  factory SubscriptionDataModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionDataModelFromJson(json);
}
