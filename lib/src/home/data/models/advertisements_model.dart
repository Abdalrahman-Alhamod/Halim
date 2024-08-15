import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'advertisements_model.freezed.dart';
part 'advertisements_model.g.dart';

@freezed
class AdvertisementsModel with _$AdvertisementsModel {
 factory AdvertisementsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'image') String? image,
  }) = _AdvertisementsModel;

  factory AdvertisementsModel.fromJson(Map<String, Object?> json) =>
      _$AdvertisementsModelFromJson(json);
}
