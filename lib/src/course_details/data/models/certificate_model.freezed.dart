// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CertificateModel _$CertificateModelFromJson(Map<String, dynamic> json) {
  return _CertificateModel.fromJson(json);
}

/// @nodoc
mixin _$CertificateModel {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateModelCopyWith<CertificateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateModelCopyWith<$Res> {
  factory $CertificateModelCopyWith(
          CertificateModel value, $Res Function(CertificateModel) then) =
      _$CertificateModelCopyWithImpl<$Res, CertificateModel>;
  @useResult
  $Res call({@JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$CertificateModelCopyWithImpl<$Res, $Val extends CertificateModel>
    implements $CertificateModelCopyWith<$Res> {
  _$CertificateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateModelImplCopyWith<$Res>
    implements $CertificateModelCopyWith<$Res> {
  factory _$$CertificateModelImplCopyWith(_$CertificateModelImpl value,
          $Res Function(_$CertificateModelImpl) then) =
      __$$CertificateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$CertificateModelImplCopyWithImpl<$Res>
    extends _$CertificateModelCopyWithImpl<$Res, _$CertificateModelImpl>
    implements _$$CertificateModelImplCopyWith<$Res> {
  __$$CertificateModelImplCopyWithImpl(_$CertificateModelImpl _value,
      $Res Function(_$CertificateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$CertificateModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateModelImpl
    with DiagnosticableTreeMixin
    implements _CertificateModel {
  const _$CertificateModelImpl({@JsonKey(name: 'url') this.url});

  factory _$CertificateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateModelImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CertificateModel(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CertificateModel'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateModelImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateModelImplCopyWith<_$CertificateModelImpl> get copyWith =>
      __$$CertificateModelImplCopyWithImpl<_$CertificateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateModelImplToJson(
      this,
    );
  }
}

abstract class _CertificateModel implements CertificateModel {
  const factory _CertificateModel({@JsonKey(name: 'url') final String? url}) =
      _$CertificateModelImpl;

  factory _CertificateModel.fromJson(Map<String, dynamic> json) =
      _$CertificateModelImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$CertificateModelImplCopyWith<_$CertificateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
