// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_course_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyCourseCardModel _$MyCourseCardModelFromJson(Map<String, dynamic> json) {
  return _MyCourseCardModel.fromJson(json);
}

/// @nodoc
mixin _$MyCourseCardModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_hours')
  num? get numberOfHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'lessons_count')
  int? get lessonsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_lessons')
  int? get completedLessons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCourseCardModelCopyWith<MyCourseCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCourseCardModelCopyWith<$Res> {
  factory $MyCourseCardModelCopyWith(
          MyCourseCardModel value, $Res Function(MyCourseCardModel) then) =
      _$MyCourseCardModelCopyWithImpl<$Res, MyCourseCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'number_of_hours') num? numberOfHours,
      @JsonKey(name: 'lessons_count') int? lessonsCount,
      @JsonKey(name: 'completed_lessons') int? completedLessons});
}

/// @nodoc
class _$MyCourseCardModelCopyWithImpl<$Res, $Val extends MyCourseCardModel>
    implements $MyCourseCardModelCopyWith<$Res> {
  _$MyCourseCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? numberOfHours = freezed,
    Object? lessonsCount = freezed,
    Object? completedLessons = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfHours: freezed == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as num?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedLessons: freezed == completedLessons
          ? _value.completedLessons
          : completedLessons // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyCourseCardModelImplCopyWith<$Res>
    implements $MyCourseCardModelCopyWith<$Res> {
  factory _$$MyCourseCardModelImplCopyWith(_$MyCourseCardModelImpl value,
          $Res Function(_$MyCourseCardModelImpl) then) =
      __$$MyCourseCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'number_of_hours') num? numberOfHours,
      @JsonKey(name: 'lessons_count') int? lessonsCount,
      @JsonKey(name: 'completed_lessons') int? completedLessons});
}

/// @nodoc
class __$$MyCourseCardModelImplCopyWithImpl<$Res>
    extends _$MyCourseCardModelCopyWithImpl<$Res, _$MyCourseCardModelImpl>
    implements _$$MyCourseCardModelImplCopyWith<$Res> {
  __$$MyCourseCardModelImplCopyWithImpl(_$MyCourseCardModelImpl _value,
      $Res Function(_$MyCourseCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? numberOfHours = freezed,
    Object? lessonsCount = freezed,
    Object? completedLessons = freezed,
  }) {
    return _then(_$MyCourseCardModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfHours: freezed == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as num?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedLessons: freezed == completedLessons
          ? _value.completedLessons
          : completedLessons // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyCourseCardModelImpl
    with DiagnosticableTreeMixin
    implements _MyCourseCardModel {
  const _$MyCourseCardModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'number_of_hours') this.numberOfHours,
      @JsonKey(name: 'lessons_count') this.lessonsCount,
      @JsonKey(name: 'completed_lessons') this.completedLessons});

  factory _$MyCourseCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyCourseCardModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'number_of_hours')
  final num? numberOfHours;
  @override
  @JsonKey(name: 'lessons_count')
  final int? lessonsCount;
  @override
  @JsonKey(name: 'completed_lessons')
  final int? completedLessons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseCardModel(id: $id, title: $title, image: $image, numberOfHours: $numberOfHours, lessonsCount: $lessonsCount, completedLessons: $completedLessons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyCourseCardModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('numberOfHours', numberOfHours))
      ..add(DiagnosticsProperty('lessonsCount', lessonsCount))
      ..add(DiagnosticsProperty('completedLessons', completedLessons));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyCourseCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.numberOfHours, numberOfHours) ||
                other.numberOfHours == numberOfHours) &&
            (identical(other.lessonsCount, lessonsCount) ||
                other.lessonsCount == lessonsCount) &&
            (identical(other.completedLessons, completedLessons) ||
                other.completedLessons == completedLessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, numberOfHours,
      lessonsCount, completedLessons);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyCourseCardModelImplCopyWith<_$MyCourseCardModelImpl> get copyWith =>
      __$$MyCourseCardModelImplCopyWithImpl<_$MyCourseCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyCourseCardModelImplToJson(
      this,
    );
  }
}

abstract class _MyCourseCardModel implements MyCourseCardModel {
  const factory _MyCourseCardModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'number_of_hours') final num? numberOfHours,
          @JsonKey(name: 'lessons_count') final int? lessonsCount,
          @JsonKey(name: 'completed_lessons') final int? completedLessons}) =
      _$MyCourseCardModelImpl;

  factory _MyCourseCardModel.fromJson(Map<String, dynamic> json) =
      _$MyCourseCardModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'number_of_hours')
  num? get numberOfHours;
  @override
  @JsonKey(name: 'lessons_count')
  int? get lessonsCount;
  @override
  @JsonKey(name: 'completed_lessons')
  int? get completedLessons;
  @override
  @JsonKey(ignore: true)
  _$$MyCourseCardModelImplCopyWith<_$MyCourseCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
