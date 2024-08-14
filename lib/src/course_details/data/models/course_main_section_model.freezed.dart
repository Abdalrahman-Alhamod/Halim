// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_main_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseMainSectionModel _$CourseMainSectionModelFromJson(
    Map<String, dynamic> json) {
  return _CourseMainSectionModel.fromJson(json);
}

/// @nodoc
mixin _$CourseMainSectionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_hours')
  num? get numberOfHours => throw _privateConstructorUsedError;
  SubcategoryModel? get subcategory => throw _privateConstructorUsedError;
  LevelModel? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollments_count')
  int? get enrollmentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_avg')
  num? get reviewsAvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_saved')
  bool? get isSaved => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enrolled')
  bool? get isEnrolled => throw _privateConstructorUsedError;
  @JsonKey(name: 'lessons_count')
  int? get lessonsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_lessons')
  int? get completedLessons => throw _privateConstructorUsedError;
  @JsonKey(name: 'sections_count')
  int? get sectionsCount => throw _privateConstructorUsedError;
  DiscountModel? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseMainSectionModelCopyWith<CourseMainSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseMainSectionModelCopyWith<$Res> {
  factory $CourseMainSectionModelCopyWith(CourseMainSectionModel value,
          $Res Function(CourseMainSectionModel) then) =
      _$CourseMainSectionModelCopyWithImpl<$Res, CourseMainSectionModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      num? price,
      String? intro,
      @JsonKey(name: 'number_of_hours') num? numberOfHours,
      SubcategoryModel? subcategory,
      LevelModel? level,
      @JsonKey(name: 'enrollments_count') int? enrollmentsCount,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'reviews_avg') num? reviewsAvg,
      @JsonKey(name: 'is_saved') bool? isSaved,
      @JsonKey(name: 'is_enrolled') bool? isEnrolled,
      @JsonKey(name: 'lessons_count') int? lessonsCount,
      @JsonKey(name: 'completed_lessons') int? completedLessons,
      @JsonKey(name: 'sections_count') int? sectionsCount,
      DiscountModel? discount});

  $SubcategoryModelCopyWith<$Res>? get subcategory;
  $LevelModelCopyWith<$Res>? get level;
  $DiscountModelCopyWith<$Res>? get discount;
}

/// @nodoc
class _$CourseMainSectionModelCopyWithImpl<$Res,
        $Val extends CourseMainSectionModel>
    implements $CourseMainSectionModelCopyWith<$Res> {
  _$CourseMainSectionModelCopyWithImpl(this._value, this._then);

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
    Object? price = freezed,
    Object? intro = freezed,
    Object? numberOfHours = freezed,
    Object? subcategory = freezed,
    Object? level = freezed,
    Object? enrollmentsCount = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAvg = freezed,
    Object? isSaved = freezed,
    Object? isEnrolled = freezed,
    Object? lessonsCount = freezed,
    Object? completedLessons = freezed,
    Object? sectionsCount = freezed,
    Object? discount = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfHours: freezed == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as num?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryModel?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      enrollmentsCount: freezed == enrollmentsCount
          ? _value.enrollmentsCount
          : enrollmentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as num?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnrolled: freezed == isEnrolled
          ? _value.isEnrolled
          : isEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedLessons: freezed == completedLessons
          ? _value.completedLessons
          : completedLessons // ignore: cast_nullable_to_non_nullable
              as int?,
      sectionsCount: freezed == sectionsCount
          ? _value.sectionsCount
          : sectionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubcategoryModelCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $SubcategoryModelCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelModelCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $LevelModelCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $DiscountModelCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseMainSectionModelImplCopyWith<$Res>
    implements $CourseMainSectionModelCopyWith<$Res> {
  factory _$$CourseMainSectionModelImplCopyWith(
          _$CourseMainSectionModelImpl value,
          $Res Function(_$CourseMainSectionModelImpl) then) =
      __$$CourseMainSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      num? price,
      String? intro,
      @JsonKey(name: 'number_of_hours') num? numberOfHours,
      SubcategoryModel? subcategory,
      LevelModel? level,
      @JsonKey(name: 'enrollments_count') int? enrollmentsCount,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'reviews_avg') num? reviewsAvg,
      @JsonKey(name: 'is_saved') bool? isSaved,
      @JsonKey(name: 'is_enrolled') bool? isEnrolled,
      @JsonKey(name: 'lessons_count') int? lessonsCount,
      @JsonKey(name: 'completed_lessons') int? completedLessons,
      @JsonKey(name: 'sections_count') int? sectionsCount,
      DiscountModel? discount});

  @override
  $SubcategoryModelCopyWith<$Res>? get subcategory;
  @override
  $LevelModelCopyWith<$Res>? get level;
  @override
  $DiscountModelCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$CourseMainSectionModelImplCopyWithImpl<$Res>
    extends _$CourseMainSectionModelCopyWithImpl<$Res,
        _$CourseMainSectionModelImpl>
    implements _$$CourseMainSectionModelImplCopyWith<$Res> {
  __$$CourseMainSectionModelImplCopyWithImpl(
      _$CourseMainSectionModelImpl _value,
      $Res Function(_$CourseMainSectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? intro = freezed,
    Object? numberOfHours = freezed,
    Object? subcategory = freezed,
    Object? level = freezed,
    Object? enrollmentsCount = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAvg = freezed,
    Object? isSaved = freezed,
    Object? isEnrolled = freezed,
    Object? lessonsCount = freezed,
    Object? completedLessons = freezed,
    Object? sectionsCount = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$CourseMainSectionModelImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfHours: freezed == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as num?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryModel?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LevelModel?,
      enrollmentsCount: freezed == enrollmentsCount
          ? _value.enrollmentsCount
          : enrollmentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as num?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnrolled: freezed == isEnrolled
          ? _value.isEnrolled
          : isEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedLessons: freezed == completedLessons
          ? _value.completedLessons
          : completedLessons // ignore: cast_nullable_to_non_nullable
              as int?,
      sectionsCount: freezed == sectionsCount
          ? _value.sectionsCount
          : sectionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseMainSectionModelImpl
    with DiagnosticableTreeMixin
    implements _CourseMainSectionModel {
  const _$CourseMainSectionModelImpl(
      {this.id,
      this.title,
      this.image,
      this.price,
      this.intro,
      @JsonKey(name: 'number_of_hours') this.numberOfHours,
      this.subcategory,
      this.level,
      @JsonKey(name: 'enrollments_count') this.enrollmentsCount,
      @JsonKey(name: 'reviews_count') this.reviewsCount,
      @JsonKey(name: 'reviews_avg') this.reviewsAvg,
      @JsonKey(name: 'is_saved') this.isSaved,
      @JsonKey(name: 'is_enrolled') this.isEnrolled,
      @JsonKey(name: 'lessons_count') this.lessonsCount,
      @JsonKey(name: 'completed_lessons') this.completedLessons,
      @JsonKey(name: 'sections_count') this.sectionsCount,
      this.discount});

  factory _$CourseMainSectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseMainSectionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final num? price;
  @override
  final String? intro;
  @override
  @JsonKey(name: 'number_of_hours')
  final num? numberOfHours;
  @override
  final SubcategoryModel? subcategory;
  @override
  final LevelModel? level;
  @override
  @JsonKey(name: 'enrollments_count')
  final int? enrollmentsCount;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'reviews_avg')
  final num? reviewsAvg;
  @override
  @JsonKey(name: 'is_saved')
  final bool? isSaved;
  @override
  @JsonKey(name: 'is_enrolled')
  final bool? isEnrolled;
  @override
  @JsonKey(name: 'lessons_count')
  final int? lessonsCount;
  @override
  @JsonKey(name: 'completed_lessons')
  final int? completedLessons;
  @override
  @JsonKey(name: 'sections_count')
  final int? sectionsCount;
  @override
  final DiscountModel? discount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseMainSectionModel(id: $id, title: $title, image: $image, price: $price, intro: $intro, numberOfHours: $numberOfHours, subcategory: $subcategory, level: $level, enrollmentsCount: $enrollmentsCount, reviewsCount: $reviewsCount, reviewsAvg: $reviewsAvg, isSaved: $isSaved, isEnrolled: $isEnrolled, lessonsCount: $lessonsCount, completedLessons: $completedLessons, sectionsCount: $sectionsCount, discount: $discount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseMainSectionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('intro', intro))
      ..add(DiagnosticsProperty('numberOfHours', numberOfHours))
      ..add(DiagnosticsProperty('subcategory', subcategory))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('enrollmentsCount', enrollmentsCount))
      ..add(DiagnosticsProperty('reviewsCount', reviewsCount))
      ..add(DiagnosticsProperty('reviewsAvg', reviewsAvg))
      ..add(DiagnosticsProperty('isSaved', isSaved))
      ..add(DiagnosticsProperty('isEnrolled', isEnrolled))
      ..add(DiagnosticsProperty('lessonsCount', lessonsCount))
      ..add(DiagnosticsProperty('completedLessons', completedLessons))
      ..add(DiagnosticsProperty('sectionsCount', sectionsCount))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseMainSectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.numberOfHours, numberOfHours) ||
                other.numberOfHours == numberOfHours) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.enrollmentsCount, enrollmentsCount) ||
                other.enrollmentsCount == enrollmentsCount) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAvg, reviewsAvg) ||
                other.reviewsAvg == reviewsAvg) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isEnrolled, isEnrolled) ||
                other.isEnrolled == isEnrolled) &&
            (identical(other.lessonsCount, lessonsCount) ||
                other.lessonsCount == lessonsCount) &&
            (identical(other.completedLessons, completedLessons) ||
                other.completedLessons == completedLessons) &&
            (identical(other.sectionsCount, sectionsCount) ||
                other.sectionsCount == sectionsCount) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      image,
      price,
      intro,
      numberOfHours,
      subcategory,
      level,
      enrollmentsCount,
      reviewsCount,
      reviewsAvg,
      isSaved,
      isEnrolled,
      lessonsCount,
      completedLessons,
      sectionsCount,
      discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseMainSectionModelImplCopyWith<_$CourseMainSectionModelImpl>
      get copyWith => __$$CourseMainSectionModelImplCopyWithImpl<
          _$CourseMainSectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseMainSectionModelImplToJson(
      this,
    );
  }
}

abstract class _CourseMainSectionModel implements CourseMainSectionModel {
  const factory _CourseMainSectionModel(
      {final int? id,
      final String? title,
      final String? image,
      final num? price,
      final String? intro,
      @JsonKey(name: 'number_of_hours') final num? numberOfHours,
      final SubcategoryModel? subcategory,
      final LevelModel? level,
      @JsonKey(name: 'enrollments_count') final int? enrollmentsCount,
      @JsonKey(name: 'reviews_count') final int? reviewsCount,
      @JsonKey(name: 'reviews_avg') final num? reviewsAvg,
      @JsonKey(name: 'is_saved') final bool? isSaved,
      @JsonKey(name: 'is_enrolled') final bool? isEnrolled,
      @JsonKey(name: 'lessons_count') final int? lessonsCount,
      @JsonKey(name: 'completed_lessons') final int? completedLessons,
      @JsonKey(name: 'sections_count') final int? sectionsCount,
      final DiscountModel? discount}) = _$CourseMainSectionModelImpl;

  factory _CourseMainSectionModel.fromJson(Map<String, dynamic> json) =
      _$CourseMainSectionModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  num? get price;
  @override
  String? get intro;
  @override
  @JsonKey(name: 'number_of_hours')
  num? get numberOfHours;
  @override
  SubcategoryModel? get subcategory;
  @override
  LevelModel? get level;
  @override
  @JsonKey(name: 'enrollments_count')
  int? get enrollmentsCount;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'reviews_avg')
  num? get reviewsAvg;
  @override
  @JsonKey(name: 'is_saved')
  bool? get isSaved;
  @override
  @JsonKey(name: 'is_enrolled')
  bool? get isEnrolled;
  @override
  @JsonKey(name: 'lessons_count')
  int? get lessonsCount;
  @override
  @JsonKey(name: 'completed_lessons')
  int? get completedLessons;
  @override
  @JsonKey(name: 'sections_count')
  int? get sectionsCount;
  @override
  DiscountModel? get discount;
  @override
  @JsonKey(ignore: true)
  _$$CourseMainSectionModelImplCopyWith<_$CourseMainSectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
