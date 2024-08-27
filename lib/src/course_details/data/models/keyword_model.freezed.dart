// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeywordModel _$KeywordModelFromJson(Map<String, dynamic> json) {
  return _KeywordModel.fromJson(json);
}

/// @nodoc
mixin _$KeywordModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this KeywordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeywordModelCopyWith<KeywordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordModelCopyWith<$Res> {
  factory $KeywordModelCopyWith(
          KeywordModel value, $Res Function(KeywordModel) then) =
      _$KeywordModelCopyWithImpl<$Res, KeywordModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$KeywordModelCopyWithImpl<$Res, $Val extends KeywordModel>
    implements $KeywordModelCopyWith<$Res> {
  _$KeywordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordModelImplCopyWith<$Res>
    implements $KeywordModelCopyWith<$Res> {
  factory _$$KeywordModelImplCopyWith(
          _$KeywordModelImpl value, $Res Function(_$KeywordModelImpl) then) =
      __$$KeywordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$KeywordModelImplCopyWithImpl<$Res>
    extends _$KeywordModelCopyWithImpl<$Res, _$KeywordModelImpl>
    implements _$$KeywordModelImplCopyWith<$Res> {
  __$$KeywordModelImplCopyWithImpl(
      _$KeywordModelImpl _value, $Res Function(_$KeywordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$KeywordModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeywordModelImpl with DiagnosticableTreeMixin implements _KeywordModel {
  const _$KeywordModelImpl({this.id, this.name});

  factory _$KeywordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeywordModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KeywordModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordModelImplCopyWith<_$KeywordModelImpl> get copyWith =>
      __$$KeywordModelImplCopyWithImpl<_$KeywordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordModelImplToJson(
      this,
    );
  }
}

abstract class _KeywordModel implements KeywordModel {
  const factory _KeywordModel({final int? id, final String? name}) =
      _$KeywordModelImpl;

  factory _KeywordModel.fromJson(Map<String, dynamic> json) =
      _$KeywordModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeywordModelImplCopyWith<_$KeywordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
