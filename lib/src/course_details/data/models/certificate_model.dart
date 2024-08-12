import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'certificate_model.freezed.dart';
part 'certificate_model.g.dart';

@freezed
class CertificateModel with _$CertificateModel {
  const factory CertificateModel({
    @JsonKey(name: 'url') String? url,
  }) = _CertificateModel;

  factory CertificateModel.fromJson(Map<String, Object?> json) =>
      _$CertificateModelFromJson(json);
}
