// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_broadcast_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBroadcastTokenModel _$ChatBroadcastTokenModelFromJson(
    Map<String, dynamic> json) {
  return _ChatBroadcastTokenModel.fromJson(json);
}

/// @nodoc
mixin _$ChatBroadcastTokenModel {
  @JsonKey(name: 'auth')
  String? get auth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatBroadcastTokenModelCopyWith<ChatBroadcastTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBroadcastTokenModelCopyWith<$Res> {
  factory $ChatBroadcastTokenModelCopyWith(ChatBroadcastTokenModel value,
          $Res Function(ChatBroadcastTokenModel) then) =
      _$ChatBroadcastTokenModelCopyWithImpl<$Res, ChatBroadcastTokenModel>;
  @useResult
  $Res call({@JsonKey(name: 'auth') String? auth});
}

/// @nodoc
class _$ChatBroadcastTokenModelCopyWithImpl<$Res,
        $Val extends ChatBroadcastTokenModel>
    implements $ChatBroadcastTokenModelCopyWith<$Res> {
  _$ChatBroadcastTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
  }) {
    return _then(_value.copyWith(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBroadcastTokenModelImplCopyWith<$Res>
    implements $ChatBroadcastTokenModelCopyWith<$Res> {
  factory _$$ChatBroadcastTokenModelImplCopyWith(
          _$ChatBroadcastTokenModelImpl value,
          $Res Function(_$ChatBroadcastTokenModelImpl) then) =
      __$$ChatBroadcastTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'auth') String? auth});
}

/// @nodoc
class __$$ChatBroadcastTokenModelImplCopyWithImpl<$Res>
    extends _$ChatBroadcastTokenModelCopyWithImpl<$Res,
        _$ChatBroadcastTokenModelImpl>
    implements _$$ChatBroadcastTokenModelImplCopyWith<$Res> {
  __$$ChatBroadcastTokenModelImplCopyWithImpl(
      _$ChatBroadcastTokenModelImpl _value,
      $Res Function(_$ChatBroadcastTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
  }) {
    return _then(_$ChatBroadcastTokenModelImpl(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBroadcastTokenModelImpl
    with DiagnosticableTreeMixin
    implements _ChatBroadcastTokenModel {
  const _$ChatBroadcastTokenModelImpl({@JsonKey(name: 'auth') this.auth});

  factory _$ChatBroadcastTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBroadcastTokenModelImplFromJson(json);

  @override
  @JsonKey(name: 'auth')
  final String? auth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatBroadcastTokenModel(auth: $auth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatBroadcastTokenModel'))
      ..add(DiagnosticsProperty('auth', auth));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBroadcastTokenModelImpl &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBroadcastTokenModelImplCopyWith<_$ChatBroadcastTokenModelImpl>
      get copyWith => __$$ChatBroadcastTokenModelImplCopyWithImpl<
          _$ChatBroadcastTokenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBroadcastTokenModelImplToJson(
      this,
    );
  }
}

abstract class _ChatBroadcastTokenModel implements ChatBroadcastTokenModel {
  const factory _ChatBroadcastTokenModel(
          {@JsonKey(name: 'auth') final String? auth}) =
      _$ChatBroadcastTokenModelImpl;

  factory _ChatBroadcastTokenModel.fromJson(Map<String, dynamic> json) =
      _$ChatBroadcastTokenModelImpl.fromJson;

  @override
  @JsonKey(name: 'auth')
  String? get auth;
  @override
  @JsonKey(ignore: true)
  _$$ChatBroadcastTokenModelImplCopyWith<_$ChatBroadcastTokenModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
