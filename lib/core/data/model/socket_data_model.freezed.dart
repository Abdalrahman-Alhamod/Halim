// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketDataModel _$SocketDataModelFromJson(Map<String, dynamic> json) {
  return _SocketDataModel.fromJson(json);
}

/// @nodoc
mixin _$SocketDataModel {
  @JsonKey(name: 'socket_id')
  String? get socketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_timeout')
  int? get activityTimeout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketDataModelCopyWith<SocketDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketDataModelCopyWith<$Res> {
  factory $SocketDataModelCopyWith(
          SocketDataModel value, $Res Function(SocketDataModel) then) =
      _$SocketDataModelCopyWithImpl<$Res, SocketDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'socket_id') String? socketId,
      @JsonKey(name: 'activity_timeout') int? activityTimeout});
}

/// @nodoc
class _$SocketDataModelCopyWithImpl<$Res, $Val extends SocketDataModel>
    implements $SocketDataModelCopyWith<$Res> {
  _$SocketDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = freezed,
    Object? activityTimeout = freezed,
  }) {
    return _then(_value.copyWith(
      socketId: freezed == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String?,
      activityTimeout: freezed == activityTimeout
          ? _value.activityTimeout
          : activityTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketDataModelImplCopyWith<$Res>
    implements $SocketDataModelCopyWith<$Res> {
  factory _$$SocketDataModelImplCopyWith(_$SocketDataModelImpl value,
          $Res Function(_$SocketDataModelImpl) then) =
      __$$SocketDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'socket_id') String? socketId,
      @JsonKey(name: 'activity_timeout') int? activityTimeout});
}

/// @nodoc
class __$$SocketDataModelImplCopyWithImpl<$Res>
    extends _$SocketDataModelCopyWithImpl<$Res, _$SocketDataModelImpl>
    implements _$$SocketDataModelImplCopyWith<$Res> {
  __$$SocketDataModelImplCopyWithImpl(
      _$SocketDataModelImpl _value, $Res Function(_$SocketDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = freezed,
    Object? activityTimeout = freezed,
  }) {
    return _then(_$SocketDataModelImpl(
      socketId: freezed == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String?,
      activityTimeout: freezed == activityTimeout
          ? _value.activityTimeout
          : activityTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketDataModelImpl
    with DiagnosticableTreeMixin
    implements _SocketDataModel {
  const _$SocketDataModelImpl(
      {@JsonKey(name: 'socket_id') this.socketId,
      @JsonKey(name: 'activity_timeout') this.activityTimeout});

  factory _$SocketDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'socket_id')
  final String? socketId;
  @override
  @JsonKey(name: 'activity_timeout')
  final int? activityTimeout;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocketDataModel(socketId: $socketId, activityTimeout: $activityTimeout)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocketDataModel'))
      ..add(DiagnosticsProperty('socketId', socketId))
      ..add(DiagnosticsProperty('activityTimeout', activityTimeout));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketDataModelImpl &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId) &&
            (identical(other.activityTimeout, activityTimeout) ||
                other.activityTimeout == activityTimeout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, socketId, activityTimeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketDataModelImplCopyWith<_$SocketDataModelImpl> get copyWith =>
      __$$SocketDataModelImplCopyWithImpl<_$SocketDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketDataModelImplToJson(
      this,
    );
  }
}

abstract class _SocketDataModel implements SocketDataModel {
  const factory _SocketDataModel(
          {@JsonKey(name: 'socket_id') final String? socketId,
          @JsonKey(name: 'activity_timeout') final int? activityTimeout}) =
      _$SocketDataModelImpl;

  factory _SocketDataModel.fromJson(Map<String, dynamic> json) =
      _$SocketDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'socket_id')
  String? get socketId;
  @override
  @JsonKey(name: 'activity_timeout')
  int? get activityTimeout;
  @override
  @JsonKey(ignore: true)
  _$$SocketDataModelImplCopyWith<_$SocketDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
