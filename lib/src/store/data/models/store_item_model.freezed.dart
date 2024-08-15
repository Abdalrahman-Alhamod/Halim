// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreItemModel _$StoreItemModelFromJson(Map<String, dynamic> json) {
  return _StoreItemModel.fromJson(json);
}

/// @nodoc
mixin _$StoreItemModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'points_cost')
  int? get pointsCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreItemModelCopyWith<StoreItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreItemModelCopyWith<$Res> {
  factory $StoreItemModelCopyWith(
          StoreItemModel value, $Res Function(StoreItemModel) then) =
      _$StoreItemModelCopyWithImpl<$Res, StoreItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'points_cost') int? pointsCost});
}

/// @nodoc
class _$StoreItemModelCopyWithImpl<$Res, $Val extends StoreItemModel>
    implements $StoreItemModelCopyWith<$Res> {
  _$StoreItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? pointsCost = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsCost: freezed == pointsCost
          ? _value.pointsCost
          : pointsCost // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreItemModelImplCopyWith<$Res>
    implements $StoreItemModelCopyWith<$Res> {
  factory _$$StoreItemModelImplCopyWith(_$StoreItemModelImpl value,
          $Res Function(_$StoreItemModelImpl) then) =
      __$$StoreItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'points_cost') int? pointsCost});
}

/// @nodoc
class __$$StoreItemModelImplCopyWithImpl<$Res>
    extends _$StoreItemModelCopyWithImpl<$Res, _$StoreItemModelImpl>
    implements _$$StoreItemModelImplCopyWith<$Res> {
  __$$StoreItemModelImplCopyWithImpl(
      _$StoreItemModelImpl _value, $Res Function(_$StoreItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? pointsCost = freezed,
  }) {
    return _then(_$StoreItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsCost: freezed == pointsCost
          ? _value.pointsCost
          : pointsCost // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreItemModelImpl
    with DiagnosticableTreeMixin
    implements _StoreItemModel {
  const _$StoreItemModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'points_cost') this.pointsCost});

  factory _$StoreItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'points_cost')
  final int? pointsCost;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreItemModel(id: $id, name: $name, description: $description, image: $image, pointsCost: $pointsCost)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreItemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('pointsCost', pointsCost));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pointsCost, pointsCost) ||
                other.pointsCost == pointsCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, pointsCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreItemModelImplCopyWith<_$StoreItemModelImpl> get copyWith =>
      __$$StoreItemModelImplCopyWithImpl<_$StoreItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreItemModelImplToJson(
      this,
    );
  }
}

abstract class _StoreItemModel implements StoreItemModel {
  const factory _StoreItemModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'points_cost') final int? pointsCost}) =
      _$StoreItemModelImpl;

  factory _StoreItemModel.fromJson(Map<String, dynamic> json) =
      _$StoreItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'points_cost')
  int? get pointsCost;
  @override
  @JsonKey(ignore: true)
  _$$StoreItemModelImplCopyWith<_$StoreItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
