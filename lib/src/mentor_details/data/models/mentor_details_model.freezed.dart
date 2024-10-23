// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MentorDetailsModel _$MentorDetailsModelFromJson(Map<String, dynamic> json) {
  return _MentorDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MentorDetailsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollments_number')
  int? get enrollmentsNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'headline')
  String? get headline => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'about')
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'courses_count')
  int? get coursesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_avg')
  num? get reviewsAvg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentorDetailsModelCopyWith<MentorDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorDetailsModelCopyWith<$Res> {
  factory $MentorDetailsModelCopyWith(
          MentorDetailsModel value, $Res Function(MentorDetailsModel) then) =
      _$MentorDetailsModelCopyWithImpl<$Res, MentorDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'enrollments_number') int? enrollmentsNumber,
      @JsonKey(name: 'headline') String? headline,
      @JsonKey(name: 'experience') String? experience,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'courses_count') int? coursesCount,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'reviews_avg') num? reviewsAvg});
}

/// @nodoc
class _$MentorDetailsModelCopyWithImpl<$Res, $Val extends MentorDetailsModel>
    implements $MentorDetailsModelCopyWith<$Res> {
  _$MentorDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? image = freezed,
    Object? enrollmentsNumber = freezed,
    Object? headline = freezed,
    Object? experience = freezed,
    Object? about = freezed,
    Object? coursesCount = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAvg = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentsNumber: freezed == enrollmentsNumber
          ? _value.enrollmentsNumber
          : enrollmentsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      coursesCount: freezed == coursesCount
          ? _value.coursesCount
          : coursesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentorDetailsModelImplCopyWith<$Res>
    implements $MentorDetailsModelCopyWith<$Res> {
  factory _$$MentorDetailsModelImplCopyWith(_$MentorDetailsModelImpl value,
          $Res Function(_$MentorDetailsModelImpl) then) =
      __$$MentorDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'enrollments_number') int? enrollmentsNumber,
      @JsonKey(name: 'headline') String? headline,
      @JsonKey(name: 'experience') String? experience,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'courses_count') int? coursesCount,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'reviews_avg') num? reviewsAvg});
}

/// @nodoc
class __$$MentorDetailsModelImplCopyWithImpl<$Res>
    extends _$MentorDetailsModelCopyWithImpl<$Res, _$MentorDetailsModelImpl>
    implements _$$MentorDetailsModelImplCopyWith<$Res> {
  __$$MentorDetailsModelImplCopyWithImpl(_$MentorDetailsModelImpl _value,
      $Res Function(_$MentorDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? enrollmentsNumber = freezed,
    Object? headline = freezed,
    Object? experience = freezed,
    Object? about = freezed,
    Object? coursesCount = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAvg = freezed,
  }) {
    return _then(_$MentorDetailsModelImpl(
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentsNumber: freezed == enrollmentsNumber
          ? _value.enrollmentsNumber
          : enrollmentsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      coursesCount: freezed == coursesCount
          ? _value.coursesCount
          : coursesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAvg: freezed == reviewsAvg
          ? _value.reviewsAvg
          : reviewsAvg // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorDetailsModelImpl extends _MentorDetailsModel
    with DiagnosticableTreeMixin {
  const _$MentorDetailsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'enrollments_number') this.enrollmentsNumber,
      @JsonKey(name: 'headline') this.headline,
      @JsonKey(name: 'experience') this.experience,
      @JsonKey(name: 'about') this.about,
      @JsonKey(name: 'courses_count') this.coursesCount,
      @JsonKey(name: 'reviews_count') this.reviewsCount,
      @JsonKey(name: 'reviews_avg') this.reviewsAvg})
      : super._();

  factory _$MentorDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorDetailsModelImplFromJson(json);

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
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'enrollments_number')
  final int? enrollmentsNumber;
  @override
  @JsonKey(name: 'headline')
  final String? headline;
  @override
  @JsonKey(name: 'experience')
  final String? experience;
  @override
  @JsonKey(name: 'about')
  final String? about;
  @override
  @JsonKey(name: 'courses_count')
  final int? coursesCount;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'reviews_avg')
  final num? reviewsAvg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MentorDetailsModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, image: $image, enrollmentsNumber: $enrollmentsNumber, headline: $headline, experience: $experience, about: $about, coursesCount: $coursesCount, reviewsCount: $reviewsCount, reviewsAvg: $reviewsAvg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MentorDetailsModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('enrollmentsNumber', enrollmentsNumber))
      ..add(DiagnosticsProperty('headline', headline))
      ..add(DiagnosticsProperty('experience', experience))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('coursesCount', coursesCount))
      ..add(DiagnosticsProperty('reviewsCount', reviewsCount))
      ..add(DiagnosticsProperty('reviewsAvg', reviewsAvg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.enrollmentsNumber, enrollmentsNumber) ||
                other.enrollmentsNumber == enrollmentsNumber) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.coursesCount, coursesCount) ||
                other.coursesCount == coursesCount) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAvg, reviewsAvg) ||
                other.reviewsAvg == reviewsAvg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      email,
      image,
      enrollmentsNumber,
      headline,
      experience,
      about,
      coursesCount,
      reviewsCount,
      reviewsAvg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorDetailsModelImplCopyWith<_$MentorDetailsModelImpl> get copyWith =>
      __$$MentorDetailsModelImplCopyWithImpl<_$MentorDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MentorDetailsModel extends MentorDetailsModel {
  const factory _MentorDetailsModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'enrollments_number') final int? enrollmentsNumber,
          @JsonKey(name: 'headline') final String? headline,
          @JsonKey(name: 'experience') final String? experience,
          @JsonKey(name: 'about') final String? about,
          @JsonKey(name: 'courses_count') final int? coursesCount,
          @JsonKey(name: 'reviews_count') final int? reviewsCount,
          @JsonKey(name: 'reviews_avg') final num? reviewsAvg}) =
      _$MentorDetailsModelImpl;
  const _MentorDetailsModel._() : super._();

  factory _MentorDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MentorDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'enrollments_number')
  int? get enrollmentsNumber;
  @override
  @JsonKey(name: 'headline')
  String? get headline;
  @override
  @JsonKey(name: 'experience')
  String? get experience;
  @override
  @JsonKey(name: 'about')
  String? get about;
  @override
  @JsonKey(name: 'courses_count')
  int? get coursesCount;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'reviews_avg')
  num? get reviewsAvg;
  @override
  @JsonKey(ignore: true)
  _$$MentorDetailsModelImplCopyWith<_$MentorDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
