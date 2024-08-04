// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_review_block_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseReviewBlockModel _$CourseReviewBlockModelFromJson(
    Map<String, dynamic> json) {
  return _CourseReviewBlockModel.fromJson(json);
}

/// @nodoc
mixin _$CourseReviewBlockModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentCardModel? get student => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_reviewed')
  bool? get isReviewed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseReviewBlockModelCopyWith<CourseReviewBlockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseReviewBlockModelCopyWith<$Res> {
  factory $CourseReviewBlockModelCopyWith(CourseReviewBlockModel value,
          $Res Function(CourseReviewBlockModel) then) =
      _$CourseReviewBlockModelCopyWithImpl<$Res, CourseReviewBlockModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'student') StudentCardModel? student,
      String? comment,
      int? rating,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'is_reviewed') bool? isReviewed});

  $StudentCardModelCopyWith<$Res>? get student;
}

/// @nodoc
class _$CourseReviewBlockModelCopyWithImpl<$Res,
        $Val extends CourseReviewBlockModel>
    implements $CourseReviewBlockModelCopyWith<$Res> {
  _$CourseReviewBlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
    Object? isReviewed = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentCardModel?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isReviewed: freezed == isReviewed
          ? _value.isReviewed
          : isReviewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCardModelCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentCardModelCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseReviewBlockModelImplCopyWith<$Res>
    implements $CourseReviewBlockModelCopyWith<$Res> {
  factory _$$CourseReviewBlockModelImplCopyWith(
          _$CourseReviewBlockModelImpl value,
          $Res Function(_$CourseReviewBlockModelImpl) then) =
      __$$CourseReviewBlockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'student') StudentCardModel? student,
      String? comment,
      int? rating,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'is_reviewed') bool? isReviewed});

  @override
  $StudentCardModelCopyWith<$Res>? get student;
}

/// @nodoc
class __$$CourseReviewBlockModelImplCopyWithImpl<$Res>
    extends _$CourseReviewBlockModelCopyWithImpl<$Res,
        _$CourseReviewBlockModelImpl>
    implements _$$CourseReviewBlockModelImplCopyWith<$Res> {
  __$$CourseReviewBlockModelImplCopyWithImpl(
      _$CourseReviewBlockModelImpl _value,
      $Res Function(_$CourseReviewBlockModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
    Object? isReviewed = freezed,
  }) {
    return _then(_$CourseReviewBlockModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentCardModel?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isReviewed: freezed == isReviewed
          ? _value.isReviewed
          : isReviewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseReviewBlockModelImpl
    with DiagnosticableTreeMixin
    implements _CourseReviewBlockModel {
  const _$CourseReviewBlockModelImpl(
      {this.id,
      @JsonKey(name: 'student') this.student,
      this.comment,
      this.rating,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'is_reviewed') this.isReviewed});

  factory _$CourseReviewBlockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseReviewBlockModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'student')
  final StudentCardModel? student;
  @override
  final String? comment;
  @override
  final int? rating;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'is_reviewed')
  final bool? isReviewed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseReviewBlockModel(id: $id, student: $student, comment: $comment, rating: $rating, createdAt: $createdAt, isReviewed: $isReviewed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseReviewBlockModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('student', student))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('isReviewed', isReviewed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseReviewBlockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isReviewed, isReviewed) ||
                other.isReviewed == isReviewed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, student, comment, rating, createdAt, isReviewed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseReviewBlockModelImplCopyWith<_$CourseReviewBlockModelImpl>
      get copyWith => __$$CourseReviewBlockModelImplCopyWithImpl<
          _$CourseReviewBlockModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseReviewBlockModelImplToJson(
      this,
    );
  }
}

abstract class _CourseReviewBlockModel implements CourseReviewBlockModel {
  const factory _CourseReviewBlockModel(
          {final int? id,
          @JsonKey(name: 'student') final StudentCardModel? student,
          final String? comment,
          final int? rating,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'is_reviewed') final bool? isReviewed}) =
      _$CourseReviewBlockModelImpl;

  factory _CourseReviewBlockModel.fromJson(Map<String, dynamic> json) =
      _$CourseReviewBlockModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'student')
  StudentCardModel? get student;
  @override
  String? get comment;
  @override
  int? get rating;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'is_reviewed')
  bool? get isReviewed;
  @override
  @JsonKey(ignore: true)
  _$$CourseReviewBlockModelImplCopyWith<_$CourseReviewBlockModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
