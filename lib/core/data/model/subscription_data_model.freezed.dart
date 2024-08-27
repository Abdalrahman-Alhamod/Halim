// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionDataModel _$SubscriptionDataModelFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionDataModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionDataModel {
  String? get auth => throw _privateConstructorUsedError;
  String? get channel => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionDataModelCopyWith<SubscriptionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDataModelCopyWith<$Res> {
  factory $SubscriptionDataModelCopyWith(SubscriptionDataModel value,
          $Res Function(SubscriptionDataModel) then) =
      _$SubscriptionDataModelCopyWithImpl<$Res, SubscriptionDataModel>;
  @useResult
  $Res call({String? auth, String? channel});
}

/// @nodoc
class _$SubscriptionDataModelCopyWithImpl<$Res,
        $Val extends SubscriptionDataModel>
    implements $SubscriptionDataModelCopyWith<$Res> {
  _$SubscriptionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? channel = freezed,
  }) {
    return _then(_value.copyWith(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionDataModelImplCopyWith<$Res>
    implements $SubscriptionDataModelCopyWith<$Res> {
  factory _$$SubscriptionDataModelImplCopyWith(
          _$SubscriptionDataModelImpl value,
          $Res Function(_$SubscriptionDataModelImpl) then) =
      __$$SubscriptionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? auth, String? channel});
}

/// @nodoc
class __$$SubscriptionDataModelImplCopyWithImpl<$Res>
    extends _$SubscriptionDataModelCopyWithImpl<$Res,
        _$SubscriptionDataModelImpl>
    implements _$$SubscriptionDataModelImplCopyWith<$Res> {
  __$$SubscriptionDataModelImplCopyWithImpl(_$SubscriptionDataModelImpl _value,
      $Res Function(_$SubscriptionDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? channel = freezed,
  }) {
    return _then(_$SubscriptionDataModelImpl(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionDataModelImpl
    with DiagnosticableTreeMixin
    implements _SubscriptionDataModel {
  const _$SubscriptionDataModelImpl({this.auth, this.channel});

  factory _$SubscriptionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDataModelImplFromJson(json);

  @override
  final String? auth;
  @override
  final String? channel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionDataModel(auth: $auth, channel: $channel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionDataModel'))
      ..add(DiagnosticsProperty('auth', auth))
      ..add(DiagnosticsProperty('channel', channel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDataModelImpl &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, auth, channel);

  /// Create a copy of SubscriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDataModelImplCopyWith<_$SubscriptionDataModelImpl>
      get copyWith => __$$SubscriptionDataModelImplCopyWithImpl<
          _$SubscriptionDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDataModelImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionDataModel implements SubscriptionDataModel {
  const factory _SubscriptionDataModel(
      {final String? auth,
      final String? channel}) = _$SubscriptionDataModelImpl;

  factory _SubscriptionDataModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDataModelImpl.fromJson;

  @override
  String? get auth;
  @override
  String? get channel;

  /// Create a copy of SubscriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionDataModelImplCopyWith<_$SubscriptionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
