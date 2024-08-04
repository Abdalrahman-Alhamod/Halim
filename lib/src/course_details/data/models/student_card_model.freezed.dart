// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentCardModel _$StudentCardModelFromJson(Map<String, dynamic> json) {
  return _StudentCardModel.fromJson(json);
}

/// @nodoc
mixin _$StudentCardModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCardModelCopyWith<StudentCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCardModelCopyWith<$Res> {
  factory $StudentCardModelCopyWith(
          StudentCardModel value, $Res Function(StudentCardModel) then) =
      _$StudentCardModelCopyWithImpl<$Res, StudentCardModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? image});
}

/// @nodoc
class _$StudentCardModelCopyWithImpl<$Res, $Val extends StudentCardModel>
    implements $StudentCardModelCopyWith<$Res> {
  _$StudentCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? image = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentCardModelImplCopyWith<$Res>
    implements $StudentCardModelCopyWith<$Res> {
  factory _$$StudentCardModelImplCopyWith(_$StudentCardModelImpl value,
          $Res Function(_$StudentCardModelImpl) then) =
      __$$StudentCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? image});
}

/// @nodoc
class __$$StudentCardModelImplCopyWithImpl<$Res>
    extends _$StudentCardModelCopyWithImpl<$Res, _$StudentCardModelImpl>
    implements _$$StudentCardModelImplCopyWith<$Res> {
  __$$StudentCardModelImplCopyWithImpl(_$StudentCardModelImpl _value,
      $Res Function(_$StudentCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? image = freezed,
  }) {
    return _then(_$StudentCardModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentCardModelImpl
    with DiagnosticableTreeMixin
    implements _StudentCardModel {
  const _$StudentCardModelImpl(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.image});

  factory _$StudentCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentCardModelImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentCardModel(id: $id, firstName: $firstName, lastName: $lastName, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentCardModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCardModelImplCopyWith<_$StudentCardModelImpl> get copyWith =>
      __$$StudentCardModelImplCopyWithImpl<_$StudentCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentCardModelImplToJson(
      this,
    );
  }
}

abstract class _StudentCardModel implements StudentCardModel {
  const factory _StudentCardModel(
      {final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? image}) = _$StudentCardModelImpl;

  factory _StudentCardModel.fromJson(Map<String, dynamic> json) =
      _$StudentCardModelImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$StudentCardModelImplCopyWith<_$StudentCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
