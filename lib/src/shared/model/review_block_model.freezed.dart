// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_block_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewBlockModel _$ReviewBlockModelFromJson(Map<String, dynamic> json) {
  return _ReviewBlockModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewBlockModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentCardModel? get student => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_reviewed')
  bool? get isReviewed => throw _privateConstructorUsedError;

  /// Serializes this CourseReviewBlockModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewBlockModelCopyWith<ReviewBlockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewBlockModelCopyWith<$Res> {
  factory $ReviewBlockModelCopyWith(
          ReviewBlockModel value, $Res Function(ReviewBlockModel) then) =
      _$ReviewBlockModelCopyWithImpl<$Res, ReviewBlockModel>;
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
class _$ReviewBlockModelCopyWithImpl<$Res, $Val extends ReviewBlockModel>
    implements $ReviewBlockModelCopyWith<$Res> {
  _$ReviewBlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseReviewBlockModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CourseReviewBlockModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ReviewBlockModelImplCopyWith<$Res>
    implements $ReviewBlockModelCopyWith<$Res> {
  factory _$$ReviewBlockModelImplCopyWith(_$ReviewBlockModelImpl value,
          $Res Function(_$ReviewBlockModelImpl) then) =
      __$$ReviewBlockModelImplCopyWithImpl<$Res>;
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
class __$$ReviewBlockModelImplCopyWithImpl<$Res>
    extends _$ReviewBlockModelCopyWithImpl<$Res, _$ReviewBlockModelImpl>
    implements _$$ReviewBlockModelImplCopyWith<$Res> {
  __$$ReviewBlockModelImplCopyWithImpl(_$ReviewBlockModelImpl _value,
      $Res Function(_$ReviewBlockModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseReviewBlockModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$ReviewBlockModelImpl(
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
class _$ReviewBlockModelImpl
    with DiagnosticableTreeMixin
    implements _ReviewBlockModel {
  const _$ReviewBlockModelImpl(
      {this.id,
      @JsonKey(name: 'student') this.student,
      this.comment,
      this.rating,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'is_reviewed') this.isReviewed});

  factory _$ReviewBlockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewBlockModelImplFromJson(json);

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
    return 'ReviewBlockModel(id: $id, student: $student, comment: $comment, rating: $rating, createdAt: $createdAt, isReviewed: $isReviewed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewBlockModel'))
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
            other is _$ReviewBlockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isReviewed, isReviewed) ||
                other.isReviewed == isReviewed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, student, comment, rating, createdAt, isReviewed);

  /// Create a copy of CourseReviewBlockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewBlockModelImplCopyWith<_$ReviewBlockModelImpl> get copyWith =>
      __$$ReviewBlockModelImplCopyWithImpl<_$ReviewBlockModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewBlockModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewBlockModel implements ReviewBlockModel {
  const factory _ReviewBlockModel(
          {final int? id,
          @JsonKey(name: 'student') final StudentCardModel? student,
          final String? comment,
          final int? rating,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'is_reviewed') final bool? isReviewed}) =
      _$ReviewBlockModelImpl;

  factory _ReviewBlockModel.fromJson(Map<String, dynamic> json) =
      _$ReviewBlockModelImpl.fromJson;

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

  /// Create a copy of CourseReviewBlockModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(ignore: true)
  _$$ReviewBlockModelImplCopyWith<_$ReviewBlockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
