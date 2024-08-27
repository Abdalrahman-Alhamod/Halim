// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadgeModel _$BadgeModelFromJson(Map<String, dynamic> json) {
  return _BadgeModel.fromJson(json);
}

/// @nodoc
mixin _$BadgeModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_number')
  int? get requiredNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_achieved')
  int? get numberAchieved => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_earned')
  bool? get isEarned => throw _privateConstructorUsedError;

  /// Serializes this BadgeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BadgeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BadgeModelCopyWith<BadgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeModelCopyWith<$Res> {
  factory $BadgeModelCopyWith(
          BadgeModel value, $Res Function(BadgeModel) then) =
      _$BadgeModelCopyWithImpl<$Res, BadgeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'required_number') int? requiredNumber,
      @JsonKey(name: 'number_achieved') int? numberAchieved,
      @JsonKey(name: 'is_earned') bool? isEarned});
}

/// @nodoc
class _$BadgeModelCopyWithImpl<$Res, $Val extends BadgeModel>
    implements $BadgeModelCopyWith<$Res> {
  _$BadgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BadgeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? requiredNumber = freezed,
    Object? numberAchieved = freezed,
    Object? isEarned = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredNumber: freezed == requiredNumber
          ? _value.requiredNumber
          : requiredNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      numberAchieved: freezed == numberAchieved
          ? _value.numberAchieved
          : numberAchieved // ignore: cast_nullable_to_non_nullable
              as int?,
      isEarned: freezed == isEarned
          ? _value.isEarned
          : isEarned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeModelImplCopyWith<$Res>
    implements $BadgeModelCopyWith<$Res> {
  factory _$$BadgeModelImplCopyWith(
          _$BadgeModelImpl value, $Res Function(_$BadgeModelImpl) then) =
      __$$BadgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'required_number') int? requiredNumber,
      @JsonKey(name: 'number_achieved') int? numberAchieved,
      @JsonKey(name: 'is_earned') bool? isEarned});
}

/// @nodoc
class __$$BadgeModelImplCopyWithImpl<$Res>
    extends _$BadgeModelCopyWithImpl<$Res, _$BadgeModelImpl>
    implements _$$BadgeModelImplCopyWith<$Res> {
  __$$BadgeModelImplCopyWithImpl(
      _$BadgeModelImpl _value, $Res Function(_$BadgeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BadgeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? requiredNumber = freezed,
    Object? numberAchieved = freezed,
    Object? isEarned = freezed,
  }) {
    return _then(_$BadgeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredNumber: freezed == requiredNumber
          ? _value.requiredNumber
          : requiredNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      numberAchieved: freezed == numberAchieved
          ? _value.numberAchieved
          : numberAchieved // ignore: cast_nullable_to_non_nullable
              as int?,
      isEarned: freezed == isEarned
          ? _value.isEarned
          : isEarned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeModelImpl with DiagnosticableTreeMixin implements _BadgeModel {
  const _$BadgeModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'required_number') this.requiredNumber,
      @JsonKey(name: 'number_achieved') this.numberAchieved,
      @JsonKey(name: 'is_earned') this.isEarned});

  factory _$BadgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'required_number')
  final int? requiredNumber;
  @override
  @JsonKey(name: 'number_achieved')
  final int? numberAchieved;
  @override
  @JsonKey(name: 'is_earned')
  final bool? isEarned;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BadgeModel(id: $id, name: $name, image: $image, requiredNumber: $requiredNumber, numberAchieved: $numberAchieved, isEarned: $isEarned)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BadgeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('requiredNumber', requiredNumber))
      ..add(DiagnosticsProperty('numberAchieved', numberAchieved))
      ..add(DiagnosticsProperty('isEarned', isEarned));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.requiredNumber, requiredNumber) ||
                other.requiredNumber == requiredNumber) &&
            (identical(other.numberAchieved, numberAchieved) ||
                other.numberAchieved == numberAchieved) &&
            (identical(other.isEarned, isEarned) ||
                other.isEarned == isEarned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, requiredNumber, numberAchieved, isEarned);

  /// Create a copy of BadgeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeModelImplCopyWith<_$BadgeModelImpl> get copyWith =>
      __$$BadgeModelImplCopyWithImpl<_$BadgeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeModelImplToJson(
      this,
    );
  }
}

abstract class _BadgeModel implements BadgeModel {
  const factory _BadgeModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'required_number') final int? requiredNumber,
      @JsonKey(name: 'number_achieved') final int? numberAchieved,
      @JsonKey(name: 'is_earned') final bool? isEarned}) = _$BadgeModelImpl;

  factory _BadgeModel.fromJson(Map<String, dynamic> json) =
      _$BadgeModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'required_number')
  int? get requiredNumber;
  @override
  @JsonKey(name: 'number_achieved')
  int? get numberAchieved;
  @override
  @JsonKey(name: 'is_earned')
  bool? get isEarned;

  /// Create a copy of BadgeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadgeModelImplCopyWith<_$BadgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
