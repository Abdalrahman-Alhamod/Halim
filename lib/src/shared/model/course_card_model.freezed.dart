// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseCardModel _$CourseCardModelFromJson(Map<String, dynamic> json) {
  return _CourseCardModel.fromJson(json);
}

/// @nodoc
mixin _$CourseCardModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  SubcategoryModel? get subcategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_avg')
  num? get reviewsAvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollments_count')
  int? get enrollmentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_saved')
  bool? get isSaved => throw _privateConstructorUsedError;
  DiscountModel? get discount => throw _privateConstructorUsedError;

  /// Serializes this CourseCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCardModelCopyWith<CourseCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCardModelCopyWith<$Res> {
  factory $CourseCardModelCopyWith(
          CourseCardModel value, $Res Function(CourseCardModel) then) =
      _$CourseCardModelCopyWithImpl<$Res, CourseCardModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      num? price,
      SubcategoryModel? subcategory,
      @JsonKey(name: 'reviews_avg') num? reviewsAvg,
      @JsonKey(name: 'enrollments_count') int? enrollmentsCount,
      @JsonKey(name: 'is_saved') bool? isSaved,
      DiscountModel? discount});

  $SubcategoryModelCopyWith<$Res>? get subcategory;
  $DiscountModelCopyWith<$Res>? get discount;
}

/// @nodoc
class _$CourseCardModelCopyWithImpl<$Res, $Val extends CourseCardModel>
    implements $CourseCardModelCopyWith<$Res> {
  _$CourseCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? subcategory = freezed,
    Object? reviewsAvg = freezed,
    Object? enrollmentsCount = freezed,
    Object? isSaved = freezed,
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
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryModel?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as num?,
      enrollmentsCount: freezed == enrollmentsCount
          ? _value.enrollmentsCount
          : enrollmentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
    ) as $Val);
  }

  /// Create a copy of CourseCardModel
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

  /// Create a copy of CourseCardModel
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
}

/// @nodoc
abstract class _$$CourseCardModelImplCopyWith<$Res>
    implements $CourseCardModelCopyWith<$Res> {
  factory _$$CourseCardModelImplCopyWith(_$CourseCardModelImpl value,
          $Res Function(_$CourseCardModelImpl) then) =
      __$$CourseCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      num? price,
      SubcategoryModel? subcategory,
      @JsonKey(name: 'reviews_avg') num? reviewsAvg,
      @JsonKey(name: 'enrollments_count') int? enrollmentsCount,
      @JsonKey(name: 'is_saved') bool? isSaved,
      DiscountModel? discount});

  @override
  $SubcategoryModelCopyWith<$Res>? get subcategory;
  @override
  $DiscountModelCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$CourseCardModelImplCopyWithImpl<$Res>
    extends _$CourseCardModelCopyWithImpl<$Res, _$CourseCardModelImpl>
    implements _$$CourseCardModelImplCopyWith<$Res> {
  __$$CourseCardModelImplCopyWithImpl(
      _$CourseCardModelImpl _value, $Res Function(_$CourseCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? subcategory = freezed,
    Object? reviewsAvg = freezed,
    Object? enrollmentsCount = freezed,
    Object? isSaved = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$CourseCardModelImpl(
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
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryModel?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as num?,
      enrollmentsCount: freezed == enrollmentsCount
          ? _value.enrollmentsCount
          : enrollmentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseCardModelImpl implements _CourseCardModel {
  const _$CourseCardModelImpl(
      {this.id,
      this.title,
      this.image,
      this.price,
      this.subcategory,
      @JsonKey(name: 'reviews_avg') this.reviewsAvg,
      @JsonKey(name: 'enrollments_count') this.enrollmentsCount,
      @JsonKey(name: 'is_saved') this.isSaved,
      this.discount});

  factory _$CourseCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseCardModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final num? price;
  @override
  final SubcategoryModel? subcategory;
  @override
  @JsonKey(name: 'reviews_avg')
  final num? reviewsAvg;
  @override
  @JsonKey(name: 'enrollments_count')
  final int? enrollmentsCount;
  @override
  @JsonKey(name: 'is_saved')
  final bool? isSaved;
  @override
  final DiscountModel? discount;

  @override
  String toString() {
    return 'CourseCardModel(id: $id, title: $title, image: $image, price: $price, subcategory: $subcategory, reviewsAvg: $reviewsAvg, enrollmentsCount: $enrollmentsCount, isSaved: $isSaved, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.reviewsAvg, reviewsAvg) ||
                other.reviewsAvg == reviewsAvg) &&
            (identical(other.enrollmentsCount, enrollmentsCount) ||
                other.enrollmentsCount == enrollmentsCount) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, price,
      subcategory, reviewsAvg, enrollmentsCount, isSaved, discount);

  /// Create a copy of CourseCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCardModelImplCopyWith<_$CourseCardModelImpl> get copyWith =>
      __$$CourseCardModelImplCopyWithImpl<_$CourseCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseCardModelImplToJson(
      this,
    );
  }
}

abstract class _CourseCardModel implements CourseCardModel {
  const factory _CourseCardModel(
      {final int? id,
      final String? title,
      final String? image,
      final num? price,
      final SubcategoryModel? subcategory,
      @JsonKey(name: 'reviews_avg') final num? reviewsAvg,
      @JsonKey(name: 'enrollments_count') final int? enrollmentsCount,
      @JsonKey(name: 'is_saved') final bool? isSaved,
      final DiscountModel? discount}) = _$CourseCardModelImpl;

  factory _CourseCardModel.fromJson(Map<String, dynamic> json) =
      _$CourseCardModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  num? get price;
  @override
  SubcategoryModel? get subcategory;
  @override
  @JsonKey(name: 'reviews_avg')
  num? get reviewsAvg;
  @override
  @JsonKey(name: 'enrollments_count')
  int? get enrollmentsCount;
  @override
  @JsonKey(name: 'is_saved')
  bool? get isSaved;
  @override
  DiscountModel? get discount;

  /// Create a copy of CourseCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseCardModelImplCopyWith<_$CourseCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
