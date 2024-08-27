// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_about_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseAboutSectionModel _$CourseAboutSectionModelFromJson(
    Map<String, dynamic> json) {
  return _CourseAboutSectionModel.fromJson(json);
}

/// @nodoc
mixin _$CourseAboutSectionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'mentor')
  MentorCardModel? get mentor => throw _privateConstructorUsedError;
  List<KeywordModel>? get keywords => throw _privateConstructorUsedError;

  /// Serializes this CourseAboutSectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseAboutSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseAboutSectionModelCopyWith<CourseAboutSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseAboutSectionModelCopyWith<$Res> {
  factory $CourseAboutSectionModelCopyWith(CourseAboutSectionModel value,
          $Res Function(CourseAboutSectionModel) then) =
      _$CourseAboutSectionModelCopyWithImpl<$Res, CourseAboutSectionModel>;
  @useResult
  $Res call(
      {int? id,
      String? description,
      @JsonKey(name: 'mentor') MentorCardModel? mentor,
      List<KeywordModel>? keywords});

  $MentorCardModelCopyWith<$Res>? get mentor;
}

/// @nodoc
class _$CourseAboutSectionModelCopyWithImpl<$Res,
        $Val extends CourseAboutSectionModel>
    implements $CourseAboutSectionModelCopyWith<$Res> {
  _$CourseAboutSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseAboutSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? mentor = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as MentorCardModel?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordModel>?,
    ) as $Val);
  }

  /// Create a copy of CourseAboutSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MentorCardModelCopyWith<$Res>? get mentor {
    if (_value.mentor == null) {
      return null;
    }

    return $MentorCardModelCopyWith<$Res>(_value.mentor!, (value) {
      return _then(_value.copyWith(mentor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseAboutSectionModelImplCopyWith<$Res>
    implements $CourseAboutSectionModelCopyWith<$Res> {
  factory _$$CourseAboutSectionModelImplCopyWith(
          _$CourseAboutSectionModelImpl value,
          $Res Function(_$CourseAboutSectionModelImpl) then) =
      __$$CourseAboutSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? description,
      @JsonKey(name: 'mentor') MentorCardModel? mentor,
      List<KeywordModel>? keywords});

  @override
  $MentorCardModelCopyWith<$Res>? get mentor;
}

/// @nodoc
class __$$CourseAboutSectionModelImplCopyWithImpl<$Res>
    extends _$CourseAboutSectionModelCopyWithImpl<$Res,
        _$CourseAboutSectionModelImpl>
    implements _$$CourseAboutSectionModelImplCopyWith<$Res> {
  __$$CourseAboutSectionModelImplCopyWithImpl(
      _$CourseAboutSectionModelImpl _value,
      $Res Function(_$CourseAboutSectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseAboutSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? mentor = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_$CourseAboutSectionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as MentorCardModel?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseAboutSectionModelImpl
    with DiagnosticableTreeMixin
    implements _CourseAboutSectionModel {
  const _$CourseAboutSectionModelImpl(
      {this.id,
      this.description,
      @JsonKey(name: 'mentor') this.mentor,
      final List<KeywordModel>? keywords})
      : _keywords = keywords;

  factory _$CourseAboutSectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseAboutSectionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? description;
  @override
  @JsonKey(name: 'mentor')
  final MentorCardModel? mentor;
  final List<KeywordModel>? _keywords;
  @override
  List<KeywordModel>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseAboutSectionModel(id: $id, description: $description, mentor: $mentor, keywords: $keywords)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseAboutSectionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('mentor', mentor))
      ..add(DiagnosticsProperty('keywords', keywords));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseAboutSectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mentor, mentor) || other.mentor == mentor) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, mentor,
      const DeepCollectionEquality().hash(_keywords));

  /// Create a copy of CourseAboutSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseAboutSectionModelImplCopyWith<_$CourseAboutSectionModelImpl>
      get copyWith => __$$CourseAboutSectionModelImplCopyWithImpl<
          _$CourseAboutSectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseAboutSectionModelImplToJson(
      this,
    );
  }
}

abstract class _CourseAboutSectionModel implements CourseAboutSectionModel {
  const factory _CourseAboutSectionModel(
      {final int? id,
      final String? description,
      @JsonKey(name: 'mentor') final MentorCardModel? mentor,
      final List<KeywordModel>? keywords}) = _$CourseAboutSectionModelImpl;

  factory _CourseAboutSectionModel.fromJson(Map<String, dynamic> json) =
      _$CourseAboutSectionModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get description;
  @override
  @JsonKey(name: 'mentor')
  MentorCardModel? get mentor;
  @override
  List<KeywordModel>? get keywords;

  /// Create a copy of CourseAboutSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseAboutSectionModelImplCopyWith<_$CourseAboutSectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
