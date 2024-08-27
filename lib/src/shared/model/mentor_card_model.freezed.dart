// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MentorCardModel _$MentorCardModelFromJson(Map<String, dynamic> json) {
  return _MentorCardModel.fromJson(json);
}

/// @nodoc
mixin _$MentorCardModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get headline => throw _privateConstructorUsedError;

  /// Serializes this MentorCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentorCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorCardModelCopyWith<MentorCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorCardModelCopyWith<$Res> {
  factory $MentorCardModelCopyWith(
          MentorCardModel value, $Res Function(MentorCardModel) then) =
      _$MentorCardModelCopyWithImpl<$Res, MentorCardModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? image,
      String? headline});
}

/// @nodoc
class _$MentorCardModelCopyWithImpl<$Res, $Val extends MentorCardModel>
    implements $MentorCardModelCopyWith<$Res> {
  _$MentorCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentorCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? image = freezed,
    Object? headline = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentorCardModelImplCopyWith<$Res>
    implements $MentorCardModelCopyWith<$Res> {
  factory _$$MentorCardModelImplCopyWith(_$MentorCardModelImpl value,
          $Res Function(_$MentorCardModelImpl) then) =
      __$$MentorCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? image,
      String? headline});
}

/// @nodoc
class __$$MentorCardModelImplCopyWithImpl<$Res>
    extends _$MentorCardModelCopyWithImpl<$Res, _$MentorCardModelImpl>
    implements _$$MentorCardModelImplCopyWith<$Res> {
  __$$MentorCardModelImplCopyWithImpl(
      _$MentorCardModelImpl _value, $Res Function(_$MentorCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentorCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? image = freezed,
    Object? headline = freezed,
  }) {
    return _then(_$MentorCardModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorCardModelImpl extends _MentorCardModel {
  const _$MentorCardModelImpl(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.image,
      this.headline})
      : super._();

  factory _$MentorCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorCardModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? image;
  @override
  final String? headline;

  @override
  String toString() {
    return 'MentorCardModel(id: $id, firstName: $firstName, lastName: $lastName, image: $image, headline: $headline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.headline, headline) ||
                other.headline == headline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, image, headline);

  /// Create a copy of MentorCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorCardModelImplCopyWith<_$MentorCardModelImpl> get copyWith =>
      __$$MentorCardModelImplCopyWithImpl<_$MentorCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorCardModelImplToJson(
      this,
    );
  }
}

abstract class _MentorCardModel extends MentorCardModel {
  const factory _MentorCardModel(
      {final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? image,
      final String? headline}) = _$MentorCardModelImpl;
  const _MentorCardModel._() : super._();

  factory _MentorCardModel.fromJson(Map<String, dynamic> json) =
      _$MentorCardModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get image;
  @override
  String? get headline;

  /// Create a copy of MentorCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorCardModelImplCopyWith<_$MentorCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
