import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'balance') num? balance,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, Object?> json) =>
      _$WalletModelFromJson(json);
}
