// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) {
  return _ReceiptModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiptModel {
  @JsonKey(name: 'user')
  ReceiptUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'course')
  ReceiptCourseModel? get course => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_before_discount')
  num? get priceBeforeDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReceiptModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptModelCopyWith<ReceiptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptModelCopyWith<$Res> {
  factory $ReceiptModelCopyWith(
          ReceiptModel value, $Res Function(ReceiptModel) then) =
      _$ReceiptModelCopyWithImpl<$Res, ReceiptModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') ReceiptUserModel? user,
      @JsonKey(name: 'course') ReceiptCourseModel? course,
      @JsonKey(name: 'price_before_discount') num? priceBeforeDiscount,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $ReceiptUserModelCopyWith<$Res>? get user;
  $ReceiptCourseModelCopyWith<$Res>? get course;
}

/// @nodoc
class _$ReceiptModelCopyWithImpl<$Res, $Val extends ReceiptModel>
    implements $ReceiptModelCopyWith<$Res> {
  _$ReceiptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? course = freezed,
    Object? priceBeforeDiscount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ReceiptUserModel?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as ReceiptCourseModel?,
      priceBeforeDiscount: freezed == priceBeforeDiscount
          ? _value.priceBeforeDiscount
          : priceBeforeDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiptUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ReceiptUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiptCourseModelCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $ReceiptCourseModelCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceiptModelImplCopyWith<$Res>
    implements $ReceiptModelCopyWith<$Res> {
  factory _$$ReceiptModelImplCopyWith(
          _$ReceiptModelImpl value, $Res Function(_$ReceiptModelImpl) then) =
      __$$ReceiptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') ReceiptUserModel? user,
      @JsonKey(name: 'course') ReceiptCourseModel? course,
      @JsonKey(name: 'price_before_discount') num? priceBeforeDiscount,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $ReceiptUserModelCopyWith<$Res>? get user;
  @override
  $ReceiptCourseModelCopyWith<$Res>? get course;
}

/// @nodoc
class __$$ReceiptModelImplCopyWithImpl<$Res>
    extends _$ReceiptModelCopyWithImpl<$Res, _$ReceiptModelImpl>
    implements _$$ReceiptModelImplCopyWith<$Res> {
  __$$ReceiptModelImplCopyWithImpl(
      _$ReceiptModelImpl _value, $Res Function(_$ReceiptModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? course = freezed,
    Object? priceBeforeDiscount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ReceiptModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ReceiptUserModel?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as ReceiptCourseModel?,
      priceBeforeDiscount: freezed == priceBeforeDiscount
          ? _value.priceBeforeDiscount
          : priceBeforeDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptModelImpl with DiagnosticableTreeMixin implements _ReceiptModel {
  const _$ReceiptModelImpl(
      {@JsonKey(name: 'user') this.user,
      @JsonKey(name: 'course') this.course,
      @JsonKey(name: 'price_before_discount') this.priceBeforeDiscount,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$ReceiptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptModelImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final ReceiptUserModel? user;
  @override
  @JsonKey(name: 'course')
  final ReceiptCourseModel? course;
  @override
  @JsonKey(name: 'price_before_discount')
  final num? priceBeforeDiscount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReceiptModel(user: $user, course: $course, priceBeforeDiscount: $priceBeforeDiscount, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReceiptModel'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('course', course))
      ..add(DiagnosticsProperty('priceBeforeDiscount', priceBeforeDiscount))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.priceBeforeDiscount, priceBeforeDiscount) ||
                other.priceBeforeDiscount == priceBeforeDiscount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, course, priceBeforeDiscount, createdAt);

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptModelImplCopyWith<_$ReceiptModelImpl> get copyWith =>
      __$$ReceiptModelImplCopyWithImpl<_$ReceiptModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptModelImplToJson(
      this,
    );
  }
}

abstract class _ReceiptModel implements ReceiptModel {
  const factory _ReceiptModel(
      {@JsonKey(name: 'user') final ReceiptUserModel? user,
      @JsonKey(name: 'course') final ReceiptCourseModel? course,
      @JsonKey(name: 'price_before_discount') final num? priceBeforeDiscount,
      @JsonKey(name: 'created_at')
      final DateTime? createdAt}) = _$ReceiptModelImpl;

  factory _ReceiptModel.fromJson(Map<String, dynamic> json) =
      _$ReceiptModelImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  ReceiptUserModel? get user;
  @override
  @JsonKey(name: 'course')
  ReceiptCourseModel? get course;
  @override
  @JsonKey(name: 'price_before_discount')
  num? get priceBeforeDiscount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of ReceiptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptModelImplCopyWith<_$ReceiptModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceiptUserModel _$ReceiptUserModelFromJson(Map<String, dynamic> json) {
  return _ReceiptUserModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiptUserModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this ReceiptUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptUserModelCopyWith<ReceiptUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptUserModelCopyWith<$Res> {
  factory $ReceiptUserModelCopyWith(
          ReceiptUserModel value, $Res Function(ReceiptUserModel) then) =
      _$ReceiptUserModelCopyWithImpl<$Res, ReceiptUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$ReceiptUserModelCopyWithImpl<$Res, $Val extends ReceiptUserModel>
    implements $ReceiptUserModelCopyWith<$Res> {
  _$ReceiptUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptUserModelImplCopyWith<$Res>
    implements $ReceiptUserModelCopyWith<$Res> {
  factory _$$ReceiptUserModelImplCopyWith(_$ReceiptUserModelImpl value,
          $Res Function(_$ReceiptUserModelImpl) then) =
      __$$ReceiptUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$ReceiptUserModelImplCopyWithImpl<$Res>
    extends _$ReceiptUserModelCopyWithImpl<$Res, _$ReceiptUserModelImpl>
    implements _$$ReceiptUserModelImplCopyWith<$Res> {
  __$$ReceiptUserModelImplCopyWithImpl(_$ReceiptUserModelImpl _value,
      $Res Function(_$ReceiptUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$ReceiptUserModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptUserModelImpl
    with DiagnosticableTreeMixin
    implements _ReceiptUserModel {
  const _$ReceiptUserModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email});

  factory _$ReceiptUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptUserModelImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReceiptUserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReceiptUserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, email);

  /// Create a copy of ReceiptUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptUserModelImplCopyWith<_$ReceiptUserModelImpl> get copyWith =>
      __$$ReceiptUserModelImplCopyWithImpl<_$ReceiptUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptUserModelImplToJson(
      this,
    );
  }
}

abstract class _ReceiptUserModel implements ReceiptUserModel {
  const factory _ReceiptUserModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'email') final String? email}) = _$ReceiptUserModelImpl;

  factory _ReceiptUserModel.fromJson(Map<String, dynamic> json) =
      _$ReceiptUserModelImpl.fromJson;

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

  /// Create a copy of ReceiptUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptUserModelImplCopyWith<_$ReceiptUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceiptCourseModel _$ReceiptCourseModelFromJson(Map<String, dynamic> json) {
  return _ReceiptCourseModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiptCourseModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  num? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategory')
  SubcategoryModel? get subcategory => throw _privateConstructorUsedError;

  /// Serializes this ReceiptCourseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptCourseModelCopyWith<ReceiptCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCourseModelCopyWith<$Res> {
  factory $ReceiptCourseModelCopyWith(
          ReceiptCourseModel value, $Res Function(ReceiptCourseModel) then) =
      _$ReceiptCourseModelCopyWithImpl<$Res, ReceiptCourseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'price') num? price,
      @JsonKey(name: 'subcategory') SubcategoryModel? subcategory});

  $SubcategoryModelCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$ReceiptCourseModelCopyWithImpl<$Res, $Val extends ReceiptCourseModel>
    implements $ReceiptCourseModelCopyWith<$Res> {
  _$ReceiptCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? subcategory = freezed,
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
    ) as $Val);
  }

  /// Create a copy of ReceiptCourseModel
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
abstract class _$$ReceiptCourseModelImplCopyWith<$Res>
    implements $ReceiptCourseModelCopyWith<$Res> {
  factory _$$ReceiptCourseModelImplCopyWith(_$ReceiptCourseModelImpl value,
          $Res Function(_$ReceiptCourseModelImpl) then) =
      __$$ReceiptCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'price') num? price,
      @JsonKey(name: 'subcategory') SubcategoryModel? subcategory});

  @override
  $SubcategoryModelCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$$ReceiptCourseModelImplCopyWithImpl<$Res>
    extends _$ReceiptCourseModelCopyWithImpl<$Res, _$ReceiptCourseModelImpl>
    implements _$$ReceiptCourseModelImplCopyWith<$Res> {
  __$$ReceiptCourseModelImplCopyWithImpl(_$ReceiptCourseModelImpl _value,
      $Res Function(_$ReceiptCourseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? subcategory = freezed,
  }) {
    return _then(_$ReceiptCourseModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptCourseModelImpl
    with DiagnosticableTreeMixin
    implements _ReceiptCourseModel {
  const _$ReceiptCourseModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'subcategory') this.subcategory});

  factory _$ReceiptCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptCourseModelImplFromJson(json);

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
  @JsonKey(name: 'price')
  final num? price;
  @override
  @JsonKey(name: 'subcategory')
  final SubcategoryModel? subcategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReceiptCourseModel(id: $id, title: $title, image: $image, price: $price, subcategory: $subcategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReceiptCourseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('subcategory', subcategory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptCourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, price, subcategory);

  /// Create a copy of ReceiptCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptCourseModelImplCopyWith<_$ReceiptCourseModelImpl> get copyWith =>
      __$$ReceiptCourseModelImplCopyWithImpl<_$ReceiptCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptCourseModelImplToJson(
      this,
    );
  }
}

abstract class _ReceiptCourseModel implements ReceiptCourseModel {
  const factory _ReceiptCourseModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'price') final num? price,
          @JsonKey(name: 'subcategory') final SubcategoryModel? subcategory}) =
      _$ReceiptCourseModelImpl;

  factory _ReceiptCourseModel.fromJson(Map<String, dynamic> json) =
      _$ReceiptCourseModelImpl.fromJson;

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
  @JsonKey(name: 'price')
  num? get price;
  @override
  @JsonKey(name: 'subcategory')
  SubcategoryModel? get subcategory;

  /// Create a copy of ReceiptCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptCourseModelImplCopyWith<_$ReceiptCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
