// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_infomations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentInfomationsModel _$StudentInfomationsModelFromJson(
    Map<String, dynamic> json) {
  return _StudentInfomationsModel.fromJson(json);
}

/// @nodoc
mixin _$StudentInfomationsModel {
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

  /// Serializes this StudentInfomationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentInfomationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentInfomationsModelCopyWith<StudentInfomationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentInfomationsModelCopyWith<$Res> {
  factory $StudentInfomationsModelCopyWith(StudentInfomationsModel value,
          $Res Function(StudentInfomationsModel) then) =
      _$StudentInfomationsModelCopyWithImpl<$Res, StudentInfomationsModel>;
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
      @JsonKey(name: 'points_balance') int? pointsBalance});

  $MajorCopyWith<$Res>? get major;
}

/// @nodoc
class _$StudentInfomationsModelCopyWithImpl<$Res,
        $Val extends StudentInfomationsModel>
    implements $StudentInfomationsModelCopyWith<$Res> {
  _$StudentInfomationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentInfomationsModel
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
    ) as $Val);
  }

  /// Create a copy of StudentInfomationsModel
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
abstract class _$$StudentInfomationsModelImplCopyWith<$Res>
    implements $StudentInfomationsModelCopyWith<$Res> {
  factory _$$StudentInfomationsModelImplCopyWith(
          _$StudentInfomationsModelImpl value,
          $Res Function(_$StudentInfomationsModelImpl) then) =
      __$$StudentInfomationsModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'points_balance') int? pointsBalance});

  @override
  $MajorCopyWith<$Res>? get major;
}

/// @nodoc
class __$$StudentInfomationsModelImplCopyWithImpl<$Res>
    extends _$StudentInfomationsModelCopyWithImpl<$Res,
        _$StudentInfomationsModelImpl>
    implements _$$StudentInfomationsModelImplCopyWith<$Res> {
  __$$StudentInfomationsModelImplCopyWithImpl(
      _$StudentInfomationsModelImpl _value,
      $Res Function(_$StudentInfomationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentInfomationsModel
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
  }) {
    return _then(_$StudentInfomationsModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentInfomationsModelImpl
    with DiagnosticableTreeMixin
    implements _StudentInfomationsModel {
  _$StudentInfomationsModelImpl(
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
      @JsonKey(name: 'points_balance') this.pointsBalance});

  factory _$StudentInfomationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentInfomationsModelImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentInfomationsModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, pin: $pin, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, educationLevel: $educationLevel, major: $major, interests: $interests, pointsBalance: $pointsBalance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentInfomationsModel'))
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
      ..add(DiagnosticsProperty('pointsBalance', pointsBalance));
  }

  /// Create a copy of StudentInfomationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentInfomationsModelImplCopyWith<_$StudentInfomationsModelImpl>
      get copyWith => __$$StudentInfomationsModelImplCopyWithImpl<
          _$StudentInfomationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentInfomationsModelImplToJson(
      this,
    );
  }
}

abstract class _StudentInfomationsModel implements StudentInfomationsModel {
  factory _StudentInfomationsModel(
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
          @JsonKey(name: 'points_balance') int? pointsBalance}) =
      _$StudentInfomationsModelImpl;

  factory _StudentInfomationsModel.fromJson(Map<String, dynamic> json) =
      _$StudentInfomationsModelImpl.fromJson;

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

  /// Create a copy of StudentInfomationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentInfomationsModelImplCopyWith<_$StudentInfomationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Major _$MajorFromJson(Map<String, dynamic> json) {
  return _Major.fromJson(json);
}

/// @nodoc
mixin _$Major {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String? value) => throw _privateConstructorUsedError;

  /// Serializes this Major to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Major
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MajorCopyWith<Major> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorCopyWith<$Res> {
  factory $MajorCopyWith(Major value, $Res Function(Major) then) =
      _$MajorCopyWithImpl<$Res, Major>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$MajorCopyWithImpl<$Res, $Val extends Major>
    implements $MajorCopyWith<$Res> {
  _$MajorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Major
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MajorImplCopyWith<$Res> implements $MajorCopyWith<$Res> {
  factory _$$MajorImplCopyWith(
          _$MajorImpl value, $Res Function(_$MajorImpl) then) =
      __$$MajorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$MajorImplCopyWithImpl<$Res>
    extends _$MajorCopyWithImpl<$Res, _$MajorImpl>
    implements _$$MajorImplCopyWith<$Res> {
  __$$MajorImplCopyWithImpl(
      _$MajorImpl _value, $Res Function(_$MajorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Major
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MajorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MajorImpl with DiagnosticableTreeMixin implements _Major {
  _$MajorImpl({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$MajorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MajorImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'name')
  String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Major(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Major'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  /// Create a copy of Major
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MajorImplCopyWith<_$MajorImpl> get copyWith =>
      __$$MajorImplCopyWithImpl<_$MajorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MajorImplToJson(
      this,
    );
  }
}

abstract class _Major implements Major {
  factory _Major(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _$MajorImpl;

  factory _Major.fromJson(Map<String, dynamic> json) = _$MajorImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'name')
  set name(String? value);

  /// Create a copy of Major
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MajorImplCopyWith<_$MajorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Interests _$InterestsFromJson(Map<String, dynamic> json) {
  return _Interests.fromJson(json);
}

/// @nodoc
mixin _$Interests {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String? value) => throw _privateConstructorUsedError;

  /// Serializes this Interests to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Interests
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestsCopyWith<Interests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsCopyWith<$Res> {
  factory $InterestsCopyWith(Interests value, $Res Function(Interests) then) =
      _$InterestsCopyWithImpl<$Res, Interests>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$InterestsCopyWithImpl<$Res, $Val extends Interests>
    implements $InterestsCopyWith<$Res> {
  _$InterestsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Interests
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestsImplCopyWith<$Res>
    implements $InterestsCopyWith<$Res> {
  factory _$$InterestsImplCopyWith(
          _$InterestsImpl value, $Res Function(_$InterestsImpl) then) =
      __$$InterestsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$InterestsImplCopyWithImpl<$Res>
    extends _$InterestsCopyWithImpl<$Res, _$InterestsImpl>
    implements _$$InterestsImplCopyWith<$Res> {
  __$$InterestsImplCopyWithImpl(
      _$InterestsImpl _value, $Res Function(_$InterestsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Interests
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$InterestsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestsImpl with DiagnosticableTreeMixin implements _Interests {
  _$InterestsImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$InterestsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'name')
  String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Interests(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Interests'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  /// Create a copy of Interests
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsImplCopyWith<_$InterestsImpl> get copyWith =>
      __$$InterestsImplCopyWithImpl<_$InterestsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestsImplToJson(
      this,
    );
  }
}

abstract class _Interests implements Interests {
  factory _Interests(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _$InterestsImpl;

  factory _Interests.fromJson(Map<String, dynamic> json) =
      _$InterestsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'name')
  set name(String? value);

  /// Create a copy of Interests
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsImplCopyWith<_$InterestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
