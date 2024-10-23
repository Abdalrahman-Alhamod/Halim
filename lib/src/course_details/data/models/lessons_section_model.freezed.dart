// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lessons_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonsSectionModel _$LessonsSectionModelFromJson(Map<String, dynamic> json) {
  return _LessonsSectionModel.fromJson(json);
}

/// @nodoc
mixin _$LessonsSectionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'lessons_count')
  int? get lessonsCount => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
  List<LessonBlockModel>? get lessons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonsSectionModelCopyWith<LessonsSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsSectionModelCopyWith<$Res> {
  factory $LessonsSectionModelCopyWith(
          LessonsSectionModel value, $Res Function(LessonsSectionModel) then) =
      _$LessonsSectionModelCopyWithImpl<$Res, LessonsSectionModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      @JsonKey(name: 'lessons_count') int? lessonsCount,
      int? duration,
      @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
      List<LessonBlockModel>? lessons});
}

/// @nodoc
class _$LessonsSectionModelCopyWithImpl<$Res, $Val extends LessonsSectionModel>
    implements $LessonsSectionModelCopyWith<$Res> {
  _$LessonsSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? lessonsCount = freezed,
    Object? duration = freezed,
    Object? lessons = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      lessons: freezed == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonBlockModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonsSectionModelImplCopyWith<$Res>
    implements $LessonsSectionModelCopyWith<$Res> {
  factory _$$LessonsSectionModelImplCopyWith(_$LessonsSectionModelImpl value,
          $Res Function(_$LessonsSectionModelImpl) then) =
      __$$LessonsSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      @JsonKey(name: 'lessons_count') int? lessonsCount,
      int? duration,
      @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
      List<LessonBlockModel>? lessons});
}

/// @nodoc
class __$$LessonsSectionModelImplCopyWithImpl<$Res>
    extends _$LessonsSectionModelCopyWithImpl<$Res, _$LessonsSectionModelImpl>
    implements _$$LessonsSectionModelImplCopyWith<$Res> {
  __$$LessonsSectionModelImplCopyWithImpl(_$LessonsSectionModelImpl _value,
      $Res Function(_$LessonsSectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? lessonsCount = freezed,
    Object? duration = freezed,
    Object? lessons = freezed,
  }) {
    return _then(_$LessonsSectionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      lessons: freezed == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonBlockModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonsSectionModelImpl
    with DiagnosticableTreeMixin
    implements _LessonsSectionModel {
  const _$LessonsSectionModelImpl(
      {this.id,
      this.title,
      this.description,
      @JsonKey(name: 'lessons_count') this.lessonsCount,
      this.duration,
      @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
      final List<LessonBlockModel>? lessons})
      : _lessons = lessons;

  factory _$LessonsSectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonsSectionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'lessons_count')
  final int? lessonsCount;
  @override
  final int? duration;
  final List<LessonBlockModel>? _lessons;
  @override
  @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
  List<LessonBlockModel>? get lessons {
    final value = _lessons;
    if (value == null) return null;
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonsSectionModel(id: $id, title: $title, description: $description, lessonsCount: $lessonsCount, duration: $duration, lessons: $lessons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonsSectionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('lessonsCount', lessonsCount))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('lessons', lessons));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonsSectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lessonsCount, lessonsCount) ||
                other.lessonsCount == lessonsCount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      lessonsCount, duration, const DeepCollectionEquality().hash(_lessons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonsSectionModelImplCopyWith<_$LessonsSectionModelImpl> get copyWith =>
      __$$LessonsSectionModelImplCopyWithImpl<_$LessonsSectionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonsSectionModelImplToJson(
      this,
    );
  }
}

abstract class _LessonsSectionModel implements LessonsSectionModel {
  const factory _LessonsSectionModel(
      {final int? id,
      final String? title,
      final String? description,
      @JsonKey(name: 'lessons_count') final int? lessonsCount,
      final int? duration,
      @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
      final List<LessonBlockModel>? lessons}) = _$LessonsSectionModelImpl;

  factory _LessonsSectionModel.fromJson(Map<String, dynamic> json) =
      _$LessonsSectionModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'lessons_count')
  int? get lessonsCount;
  @override
  int? get duration;
  @override
  @JsonKey(fromJson: _lessonsFromJson, toJson: _lessonsToJson)
  List<LessonBlockModel>? get lessons;
  @override
  @JsonKey(ignore: true)
  _$$LessonsSectionModelImplCopyWith<_$LessonsSectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
