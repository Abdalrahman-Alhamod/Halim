// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionMessageModel _$SubscriptionMessageModelFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionMessageModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionMessageModel {
  String? get event => throw _privateConstructorUsedError;
  SubscriptionDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionMessageModelCopyWith<SubscriptionMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionMessageModelCopyWith<$Res> {
  factory $SubscriptionMessageModelCopyWith(SubscriptionMessageModel value,
          $Res Function(SubscriptionMessageModel) then) =
      _$SubscriptionMessageModelCopyWithImpl<$Res, SubscriptionMessageModel>;
  @useResult
  $Res call({String? event, SubscriptionDataModel? data});

  $SubscriptionDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SubscriptionMessageModelCopyWithImpl<$Res,
        $Val extends SubscriptionMessageModel>
    implements $SubscriptionMessageModelCopyWith<$Res> {
  _$SubscriptionMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubscriptionDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SubscriptionDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionMessageModelImplCopyWith<$Res>
    implements $SubscriptionMessageModelCopyWith<$Res> {
  factory _$$SubscriptionMessageModelImplCopyWith(
          _$SubscriptionMessageModelImpl value,
          $Res Function(_$SubscriptionMessageModelImpl) then) =
      __$$SubscriptionMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? event, SubscriptionDataModel? data});

  @override
  $SubscriptionDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SubscriptionMessageModelImplCopyWithImpl<$Res>
    extends _$SubscriptionMessageModelCopyWithImpl<$Res,
        _$SubscriptionMessageModelImpl>
    implements _$$SubscriptionMessageModelImplCopyWith<$Res> {
  __$$SubscriptionMessageModelImplCopyWithImpl(
      _$SubscriptionMessageModelImpl _value,
      $Res Function(_$SubscriptionMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubscriptionMessageModelImpl(
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubscriptionDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionMessageModelImpl
    with DiagnosticableTreeMixin
    implements _SubscriptionMessageModel {
  const _$SubscriptionMessageModelImpl({this.event, this.data});

  factory _$SubscriptionMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionMessageModelImplFromJson(json);

  @override
  final String? event;
  @override
  final SubscriptionDataModel? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionMessageModel(event: $event, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionMessageModel'))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionMessageModelImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionMessageModelImplCopyWith<_$SubscriptionMessageModelImpl>
      get copyWith => __$$SubscriptionMessageModelImplCopyWithImpl<
          _$SubscriptionMessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionMessageModelImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionMessageModel implements SubscriptionMessageModel {
  const factory _SubscriptionMessageModel(
      {final String? event,
      final SubscriptionDataModel? data}) = _$SubscriptionMessageModelImpl;

  factory _SubscriptionMessageModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionMessageModelImpl.fromJson;

  @override
  String? get event;
  @override
  SubscriptionDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionMessageModelImplCopyWith<_$SubscriptionMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
