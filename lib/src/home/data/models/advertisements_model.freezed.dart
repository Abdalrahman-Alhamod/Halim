// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisements_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvertisementsModel _$AdvertisementsModelFromJson(Map<String, dynamic> json) {
  return _AdvertisementsModel.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this AdvertisementsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertisementsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementsModelCopyWith<AdvertisementsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementsModelCopyWith<$Res> {
  factory $AdvertisementsModelCopyWith(
          AdvertisementsModel value, $Res Function(AdvertisementsModel) then) =
      _$AdvertisementsModelCopyWithImpl<$Res, AdvertisementsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$AdvertisementsModelCopyWithImpl<$Res, $Val extends AdvertisementsModel>
    implements $AdvertisementsModelCopyWith<$Res> {
  _$AdvertisementsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertisementsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementsModelImplCopyWith<$Res>
    implements $AdvertisementsModelCopyWith<$Res> {
  factory _$$AdvertisementsModelImplCopyWith(_$AdvertisementsModelImpl value,
          $Res Function(_$AdvertisementsModelImpl) then) =
      __$$AdvertisementsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$AdvertisementsModelImplCopyWithImpl<$Res>
    extends _$AdvertisementsModelCopyWithImpl<$Res, _$AdvertisementsModelImpl>
    implements _$$AdvertisementsModelImplCopyWith<$Res> {
  __$$AdvertisementsModelImplCopyWithImpl(_$AdvertisementsModelImpl _value,
      $Res Function(_$AdvertisementsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertisementsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AdvertisementsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementsModelImpl
    with DiagnosticableTreeMixin
    implements _AdvertisementsModel {
  const _$AdvertisementsModelImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'image') this.image});

  factory _$AdvertisementsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdvertisementsModel(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdvertisementsModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of AdvertisementsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementsModelImplCopyWith<_$AdvertisementsModelImpl> get copyWith =>
      __$$AdvertisementsModelImplCopyWithImpl<_$AdvertisementsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementsModelImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementsModel implements AdvertisementsModel {
  const factory _AdvertisementsModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'image') final String? image}) = _$AdvertisementsModelImpl;

  factory _AdvertisementsModel.fromJson(Map<String, dynamic> json) =
      _$AdvertisementsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'image')
  String? get image;

  /// Create a copy of AdvertisementsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementsModelImplCopyWith<_$AdvertisementsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
