// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreDiscountModel _$StoreDiscountModelFromJson(Map<String, dynamic> json) {
  return _StoreDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$StoreDiscountModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'points_cost')
  int? get pointsCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  DiscountModel? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'course')
  StoreDiscountCourseCard? get course => throw _privateConstructorUsedError;

  /// Serializes this StoreDiscountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDiscountModelCopyWith<StoreDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDiscountModelCopyWith<$Res> {
  factory $StoreDiscountModelCopyWith(
          StoreDiscountModel value, $Res Function(StoreDiscountModel) then) =
      _$StoreDiscountModelCopyWithImpl<$Res, StoreDiscountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'points_cost') int? pointsCost,
      @JsonKey(name: 'discount') DiscountModel? discount,
      @JsonKey(name: 'course') StoreDiscountCourseCard? course});

  $DiscountModelCopyWith<$Res>? get discount;
  $StoreDiscountCourseCardCopyWith<$Res>? get course;
}

/// @nodoc
class _$StoreDiscountModelCopyWithImpl<$Res, $Val extends StoreDiscountModel>
    implements $StoreDiscountModelCopyWith<$Res> {
  _$StoreDiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? pointsCost = freezed,
    Object? discount = freezed,
    Object? course = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsCost: freezed == pointsCost
          ? _value.pointsCost
          : pointsCost // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as StoreDiscountCourseCard?,
    ) as $Val);
  }

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDiscountCourseCardCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $StoreDiscountCourseCardCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreDiscountModelImplCopyWith<$Res>
    implements $StoreDiscountModelCopyWith<$Res> {
  factory _$$StoreDiscountModelImplCopyWith(_$StoreDiscountModelImpl value,
          $Res Function(_$StoreDiscountModelImpl) then) =
      __$$StoreDiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'points_cost') int? pointsCost,
      @JsonKey(name: 'discount') DiscountModel? discount,
      @JsonKey(name: 'course') StoreDiscountCourseCard? course});

  @override
  $DiscountModelCopyWith<$Res>? get discount;
  @override
  $StoreDiscountCourseCardCopyWith<$Res>? get course;
}

/// @nodoc
class __$$StoreDiscountModelImplCopyWithImpl<$Res>
    extends _$StoreDiscountModelCopyWithImpl<$Res, _$StoreDiscountModelImpl>
    implements _$$StoreDiscountModelImplCopyWith<$Res> {
  __$$StoreDiscountModelImplCopyWithImpl(_$StoreDiscountModelImpl _value,
      $Res Function(_$StoreDiscountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? pointsCost = freezed,
    Object? discount = freezed,
    Object? course = freezed,
  }) {
    return _then(_$StoreDiscountModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsCost: freezed == pointsCost
          ? _value.pointsCost
          : pointsCost // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as StoreDiscountCourseCard?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDiscountModelImpl
    with DiagnosticableTreeMixin
    implements _StoreDiscountModel {
  const _$StoreDiscountModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'points_cost') this.pointsCost,
      @JsonKey(name: 'discount') this.discount,
      @JsonKey(name: 'course') this.course});

  factory _$StoreDiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDiscountModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'points_cost')
  final int? pointsCost;
  @override
  @JsonKey(name: 'discount')
  final DiscountModel? discount;
  @override
  @JsonKey(name: 'course')
  final StoreDiscountCourseCard? course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreDiscountModel(id: $id, name: $name, description: $description, image: $image, pointsCost: $pointsCost, discount: $discount, course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreDiscountModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('pointsCost', pointsCost))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDiscountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pointsCost, pointsCost) ||
                other.pointsCost == pointsCost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.course, course) || other.course == course));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, image, pointsCost, discount, course);

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDiscountModelImplCopyWith<_$StoreDiscountModelImpl> get copyWith =>
      __$$StoreDiscountModelImplCopyWithImpl<_$StoreDiscountModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDiscountModelImplToJson(
      this,
    );
  }
}

abstract class _StoreDiscountModel implements StoreDiscountModel {
  const factory _StoreDiscountModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'points_cost') final int? pointsCost,
          @JsonKey(name: 'discount') final DiscountModel? discount,
          @JsonKey(name: 'course') final StoreDiscountCourseCard? course}) =
      _$StoreDiscountModelImpl;

  factory _StoreDiscountModel.fromJson(Map<String, dynamic> json) =
      _$StoreDiscountModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'points_cost')
  int? get pointsCost;
  @override
  @JsonKey(name: 'discount')
  DiscountModel? get discount;
  @override
  @JsonKey(name: 'course')
  StoreDiscountCourseCard? get course;

  /// Create a copy of StoreDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDiscountModelImplCopyWith<_$StoreDiscountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDiscountCourseCard _$StoreDiscountCourseCardFromJson(
    Map<String, dynamic> json) {
  return _StoreDiscountCourseCard.fromJson(json);
}

/// @nodoc
mixin _$StoreDiscountCourseCard {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'mentor')
  StoreDiscountCourseMentor? get mentor => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  num? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategory')
  SubcategoryModel? get subcategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_avg')
  int? get reviewsAvg => throw _privateConstructorUsedError;

  /// Serializes this StoreDiscountCourseCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDiscountCourseCardCopyWith<StoreDiscountCourseCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDiscountCourseCardCopyWith<$Res> {
  factory $StoreDiscountCourseCardCopyWith(StoreDiscountCourseCard value,
          $Res Function(StoreDiscountCourseCard) then) =
      _$StoreDiscountCourseCardCopyWithImpl<$Res, StoreDiscountCourseCard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'mentor') StoreDiscountCourseMentor? mentor,
      @JsonKey(name: 'price') num? price,
      @JsonKey(name: 'subcategory') SubcategoryModel? subcategory,
      @JsonKey(name: 'reviews_avg') int? reviewsAvg});

  $StoreDiscountCourseMentorCopyWith<$Res>? get mentor;
  $SubcategoryModelCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$StoreDiscountCourseCardCopyWithImpl<$Res,
        $Val extends StoreDiscountCourseCard>
    implements $StoreDiscountCourseCardCopyWith<$Res> {
  _$StoreDiscountCourseCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? mentor = freezed,
    Object? price = freezed,
    Object? subcategory = freezed,
    Object? reviewsAvg = freezed,
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
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as StoreDiscountCourseMentor?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryModel?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDiscountCourseMentorCopyWith<$Res>? get mentor {
    if (_value.mentor == null) {
      return null;
    }

    return $StoreDiscountCourseMentorCopyWith<$Res>(_value.mentor!, (value) {
      return _then(_value.copyWith(mentor: value) as $Val);
    });
  }

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
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
}

/// @nodoc
abstract class _$$StoreDiscountCourseCardImplCopyWith<$Res>
    implements $StoreDiscountCourseCardCopyWith<$Res> {
  factory _$$StoreDiscountCourseCardImplCopyWith(
          _$StoreDiscountCourseCardImpl value,
          $Res Function(_$StoreDiscountCourseCardImpl) then) =
      __$$StoreDiscountCourseCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'mentor') StoreDiscountCourseMentor? mentor,
      @JsonKey(name: 'price') num? price,
      @JsonKey(name: 'subcategory') SubcategoryModel? subcategory,
      @JsonKey(name: 'reviews_avg') int? reviewsAvg});

  @override
  $StoreDiscountCourseMentorCopyWith<$Res>? get mentor;
  @override
  $SubcategoryModelCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$$StoreDiscountCourseCardImplCopyWithImpl<$Res>
    extends _$StoreDiscountCourseCardCopyWithImpl<$Res,
        _$StoreDiscountCourseCardImpl>
    implements _$$StoreDiscountCourseCardImplCopyWith<$Res> {
  __$$StoreDiscountCourseCardImplCopyWithImpl(
      _$StoreDiscountCourseCardImpl _value,
      $Res Function(_$StoreDiscountCourseCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? mentor = freezed,
    Object? price = freezed,
    Object? subcategory = freezed,
    Object? reviewsAvg = freezed,
  }) {
    return _then(_$StoreDiscountCourseCardImpl(
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
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as StoreDiscountCourseMentor?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryModel?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDiscountCourseCardImpl
    with DiagnosticableTreeMixin
    implements _StoreDiscountCourseCard {
  const _$StoreDiscountCourseCardImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'mentor') this.mentor,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'subcategory') this.subcategory,
      @JsonKey(name: 'reviews_avg') this.reviewsAvg});

  factory _$StoreDiscountCourseCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDiscountCourseCardImplFromJson(json);

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
  @JsonKey(name: 'mentor')
  final StoreDiscountCourseMentor? mentor;
  @override
  @JsonKey(name: 'price')
  final num? price;
  @override
  @JsonKey(name: 'subcategory')
  final SubcategoryModel? subcategory;
  @override
  @JsonKey(name: 'reviews_avg')
  final int? reviewsAvg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreDiscountCourseCard(id: $id, title: $title, image: $image, mentor: $mentor, price: $price, subcategory: $subcategory, reviewsAvg: $reviewsAvg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreDiscountCourseCard'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('mentor', mentor))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('subcategory', subcategory))
      ..add(DiagnosticsProperty('reviewsAvg', reviewsAvg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDiscountCourseCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.mentor, mentor) || other.mentor == mentor) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.reviewsAvg, reviewsAvg) ||
                other.reviewsAvg == reviewsAvg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, image, mentor, price, subcategory, reviewsAvg);

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDiscountCourseCardImplCopyWith<_$StoreDiscountCourseCardImpl>
      get copyWith => __$$StoreDiscountCourseCardImplCopyWithImpl<
          _$StoreDiscountCourseCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDiscountCourseCardImplToJson(
      this,
    );
  }
}

abstract class _StoreDiscountCourseCard implements StoreDiscountCourseCard {
  const factory _StoreDiscountCourseCard(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'mentor') final StoreDiscountCourseMentor? mentor,
          @JsonKey(name: 'price') final num? price,
          @JsonKey(name: 'subcategory') final SubcategoryModel? subcategory,
          @JsonKey(name: 'reviews_avg') final int? reviewsAvg}) =
      _$StoreDiscountCourseCardImpl;

  factory _StoreDiscountCourseCard.fromJson(Map<String, dynamic> json) =
      _$StoreDiscountCourseCardImpl.fromJson;

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
  @JsonKey(name: 'mentor')
  StoreDiscountCourseMentor? get mentor;
  @override
  @JsonKey(name: 'price')
  num? get price;
  @override
  @JsonKey(name: 'subcategory')
  SubcategoryModel? get subcategory;
  @override
  @JsonKey(name: 'reviews_avg')
  int? get reviewsAvg;

  /// Create a copy of StoreDiscountCourseCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDiscountCourseCardImplCopyWith<_$StoreDiscountCourseCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StoreDiscountCourseMentor _$StoreDiscountCourseMentorFromJson(
    Map<String, dynamic> json) {
  return _StoreDiscountCourseMentor.fromJson(json);
}

/// @nodoc
mixin _$StoreDiscountCourseMentor {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

  /// Serializes this StoreDiscountCourseMentor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDiscountCourseMentor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDiscountCourseMentorCopyWith<StoreDiscountCourseMentor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDiscountCourseMentorCopyWith<$Res> {
  factory $StoreDiscountCourseMentorCopyWith(StoreDiscountCourseMentor value,
          $Res Function(StoreDiscountCourseMentor) then) =
      _$StoreDiscountCourseMentorCopyWithImpl<$Res, StoreDiscountCourseMentor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class _$StoreDiscountCourseMentorCopyWithImpl<$Res,
        $Val extends StoreDiscountCourseMentor>
    implements $StoreDiscountCourseMentorCopyWith<$Res> {
  _$StoreDiscountCourseMentorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDiscountCourseMentor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDiscountCourseMentorImplCopyWith<$Res>
    implements $StoreDiscountCourseMentorCopyWith<$Res> {
  factory _$$StoreDiscountCourseMentorImplCopyWith(
          _$StoreDiscountCourseMentorImpl value,
          $Res Function(_$StoreDiscountCourseMentorImpl) then) =
      __$$StoreDiscountCourseMentorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class __$$StoreDiscountCourseMentorImplCopyWithImpl<$Res>
    extends _$StoreDiscountCourseMentorCopyWithImpl<$Res,
        _$StoreDiscountCourseMentorImpl>
    implements _$$StoreDiscountCourseMentorImplCopyWith<$Res> {
  __$$StoreDiscountCourseMentorImplCopyWithImpl(
      _$StoreDiscountCourseMentorImpl _value,
      $Res Function(_$StoreDiscountCourseMentorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDiscountCourseMentor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$StoreDiscountCourseMentorImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDiscountCourseMentorImpl extends _StoreDiscountCourseMentor
    with DiagnosticableTreeMixin {
  const _$StoreDiscountCourseMentorImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName})
      : super._();

  factory _$StoreDiscountCourseMentorImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDiscountCourseMentorImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreDiscountCourseMentor(id: $id, firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreDiscountCourseMentor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDiscountCourseMentorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName);

  /// Create a copy of StoreDiscountCourseMentor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDiscountCourseMentorImplCopyWith<_$StoreDiscountCourseMentorImpl>
      get copyWith => __$$StoreDiscountCourseMentorImplCopyWithImpl<
          _$StoreDiscountCourseMentorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDiscountCourseMentorImplToJson(
      this,
    );
  }
}

abstract class _StoreDiscountCourseMentor extends StoreDiscountCourseMentor {
  const factory _StoreDiscountCourseMentor(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'last_name') final String? lastName}) =
      _$StoreDiscountCourseMentorImpl;
  const _StoreDiscountCourseMentor._() : super._();

  factory _StoreDiscountCourseMentor.fromJson(Map<String, dynamic> json) =
      _$StoreDiscountCourseMentorImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Create a copy of StoreDiscountCourseMentor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDiscountCourseMentorImplCopyWith<_$StoreDiscountCourseMentorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
