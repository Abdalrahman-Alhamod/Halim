// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  set firstName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  set lastName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'PIN')
  int? get pin => throw _privateConstructorUsedError;
  @JsonKey(name: 'PIN')
  set pin(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  set gender(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  set birthDate(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  set image(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_level')
  String? get educationLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_level')
  set educationLevel(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'major')
  Major? get major => throw _privateConstructorUsedError;
  @JsonKey(name: 'major')
  set major(Major? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'interests')
  List<Interests>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: 'interests')
  set interests(List<Interests>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'points_balance')
  int? get pointsBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'points_balance')
  set pointsBalance(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  set accessToken(String? value) => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'PIN') int? pin,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'education_level') String? educationLevel,
      @JsonKey(name: 'major') Major? major,
      @JsonKey(name: 'interests') List<Interests>? interests,
      @JsonKey(name: 'points_balance') int? pointsBalance,
      @JsonKey(name: 'access_token') String? accessToken});

  $MajorCopyWith<$Res>? get major;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? pin = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? image = freezed,
    Object? phoneNumber = freezed,
    Object? educationLevel = freezed,
    Object? major = freezed,
    Object? interests = freezed,
    Object? pointsBalance = freezed,
    Object? accessToken = freezed,
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
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as Major?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interests>?,
      pointsBalance: freezed == pointsBalance
          ? _value.pointsBalance
          : pointsBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MajorCopyWith<$Res>? get major {
    if (_value.major == null) {
      return null;
    }

    return $MajorCopyWith<$Res>(_value.major!, (value) {
      return _then(_value.copyWith(major: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'PIN') int? pin,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'education_level') String? educationLevel,
      @JsonKey(name: 'major') Major? major,
      @JsonKey(name: 'interests') List<Interests>? interests,
      @JsonKey(name: 'points_balance') int? pointsBalance,
      @JsonKey(name: 'access_token') String? accessToken});

  @override
  $MajorCopyWith<$Res>? get major;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? pin = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? image = freezed,
    Object? phoneNumber = freezed,
    Object? educationLevel = freezed,
    Object? major = freezed,
    Object? interests = freezed,
    Object? pointsBalance = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$UserModelImpl(
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
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as Major?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interests>?,
      pointsBalance: freezed == pointsBalance
          ? _value.pointsBalance
          : pointsBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl with DiagnosticableTreeMixin implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'PIN') this.pin,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'education_level') this.educationLevel,
      @JsonKey(name: 'major') this.major,
      @JsonKey(name: 'interests') this.interests,
      @JsonKey(name: 'points_balance') this.pointsBalance,
      @JsonKey(name: 'access_token') this.accessToken});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'first_name')
  String? firstName;
  @override
  @JsonKey(name: 'last_name')
  String? lastName;
  @override
  @JsonKey(name: 'email')
  String? email;
  @override
  @JsonKey(name: 'PIN')
  int? pin;
  @override
  @JsonKey(name: 'gender')
  String? gender;
  @override
  @JsonKey(name: 'birth_date')
  String? birthDate;
  @override
  @JsonKey(name: 'image')
  String? image;
  @override
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @override
  @JsonKey(name: 'education_level')
  String? educationLevel;
  @override
  @JsonKey(name: 'major')
  Major? major;
  @override
  @JsonKey(name: 'interests')
  List<Interests>? interests;
  @override
  @JsonKey(name: 'points_balance')
  int? pointsBalance;
  @override
  @JsonKey(name: 'access_token')
  String? accessToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, pin: $pin, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, educationLevel: $educationLevel, major: $major, interests: $interests, pointsBalance: $pointsBalance, accessToken: $accessToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('pin', pin))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('educationLevel', educationLevel))
      ..add(DiagnosticsProperty('major', major))
      ..add(DiagnosticsProperty('interests', interests))
      ..add(DiagnosticsProperty('pointsBalance', pointsBalance))
      ..add(DiagnosticsProperty('accessToken', accessToken));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'PIN') int? pin,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'education_level') String? educationLevel,
      @JsonKey(name: 'major') Major? major,
      @JsonKey(name: 'interests') List<Interests>? interests,
      @JsonKey(name: 'points_balance') int? pointsBalance,
      @JsonKey(name: 'access_token') String? accessToken}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'first_name')
  set firstName(String? value);
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @JsonKey(name: 'last_name')
  set lastName(String? value);
  @override
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'email')
  set email(String? value);
  @override
  @JsonKey(name: 'PIN')
  int? get pin;
  @JsonKey(name: 'PIN')
  set pin(int? value);
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @JsonKey(name: 'gender')
  set gender(String? value);
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @JsonKey(name: 'birth_date')
  set birthDate(String? value);
  @override
  @JsonKey(name: 'image')
  String? get image;
  @JsonKey(name: 'image')
  set image(String? value);
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @JsonKey(name: 'phone_number')
  set phoneNumber(String? value);
  @override
  @JsonKey(name: 'education_level')
  String? get educationLevel;
  @JsonKey(name: 'education_level')
  set educationLevel(String? value);
  @override
  @JsonKey(name: 'major')
  Major? get major;
  @JsonKey(name: 'major')
  set major(Major? value);
  @override
  @JsonKey(name: 'interests')
  List<Interests>? get interests;
  @JsonKey(name: 'interests')
  set interests(List<Interests>? value);
  @override
  @JsonKey(name: 'points_balance')
  int? get pointsBalance;
  @JsonKey(name: 'points_balance')
  set pointsBalance(int? value);
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @JsonKey(name: 'access_token')
  set accessToken(String? value);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
