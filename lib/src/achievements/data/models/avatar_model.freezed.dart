// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarModel _$AvatarModelFromJson(Map<String, dynamic> json) {
  return _AvatarModel.fromJson(json);
}

/// @nodoc
mixin _$AvatarModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'badges_needed')
  int? get badgesNeeded => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_points')
  int? get rewardPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'badges_achieved')
  int? get badgesAchieved => throw _privateConstructorUsedError;

  /// Serializes this AvatarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarModelCopyWith<AvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarModelCopyWith<$Res> {
  factory $AvatarModelCopyWith(
          AvatarModel value, $Res Function(AvatarModel) then) =
      _$AvatarModelCopyWithImpl<$Res, AvatarModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'badges_needed') int? badgesNeeded,
      @JsonKey(name: 'reward_points') int? rewardPoints,
      @JsonKey(name: 'badges_achieved') int? badgesAchieved});
}

/// @nodoc
class _$AvatarModelCopyWithImpl<$Res, $Val extends AvatarModel>
    implements $AvatarModelCopyWith<$Res> {
  _$AvatarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? badgesNeeded = freezed,
    Object? rewardPoints = freezed,
    Object? badgesAchieved = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      badgesNeeded: freezed == badgesNeeded
          ? _value.badgesNeeded
          : badgesNeeded // ignore: cast_nullable_to_non_nullable
              as int?,
      rewardPoints: freezed == rewardPoints
          ? _value.rewardPoints
          : rewardPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      badgesAchieved: freezed == badgesAchieved
          ? _value.badgesAchieved
          : badgesAchieved // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarModelImplCopyWith<$Res>
    implements $AvatarModelCopyWith<$Res> {
  factory _$$AvatarModelImplCopyWith(
          _$AvatarModelImpl value, $Res Function(_$AvatarModelImpl) then) =
      __$$AvatarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'badges_needed') int? badgesNeeded,
      @JsonKey(name: 'reward_points') int? rewardPoints,
      @JsonKey(name: 'badges_achieved') int? badgesAchieved});
}

/// @nodoc
class __$$AvatarModelImplCopyWithImpl<$Res>
    extends _$AvatarModelCopyWithImpl<$Res, _$AvatarModelImpl>
    implements _$$AvatarModelImplCopyWith<$Res> {
  __$$AvatarModelImplCopyWithImpl(
      _$AvatarModelImpl _value, $Res Function(_$AvatarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? badgesNeeded = freezed,
    Object? rewardPoints = freezed,
    Object? badgesAchieved = freezed,
  }) {
    return _then(_$AvatarModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      badgesNeeded: freezed == badgesNeeded
          ? _value.badgesNeeded
          : badgesNeeded // ignore: cast_nullable_to_non_nullable
              as int?,
      rewardPoints: freezed == rewardPoints
          ? _value.rewardPoints
          : rewardPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      badgesAchieved: freezed == badgesAchieved
          ? _value.badgesAchieved
          : badgesAchieved // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarModelImpl with DiagnosticableTreeMixin implements _AvatarModel {
  const _$AvatarModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'badges_needed') this.badgesNeeded,
      @JsonKey(name: 'reward_points') this.rewardPoints,
      @JsonKey(name: 'badges_achieved') this.badgesAchieved});

  factory _$AvatarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'badges_needed')
  final int? badgesNeeded;
  @override
  @JsonKey(name: 'reward_points')
  final int? rewardPoints;
  @override
  @JsonKey(name: 'badges_achieved')
  final int? badgesAchieved;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AvatarModel(name: $name, image: $image, badgesNeeded: $badgesNeeded, rewardPoints: $rewardPoints, badgesAchieved: $badgesAchieved)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AvatarModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('badgesNeeded', badgesNeeded))
      ..add(DiagnosticsProperty('rewardPoints', rewardPoints))
      ..add(DiagnosticsProperty('badgesAchieved', badgesAchieved));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.badgesNeeded, badgesNeeded) ||
                other.badgesNeeded == badgesNeeded) &&
            (identical(other.rewardPoints, rewardPoints) ||
                other.rewardPoints == rewardPoints) &&
            (identical(other.badgesAchieved, badgesAchieved) ||
                other.badgesAchieved == badgesAchieved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, image, badgesNeeded, rewardPoints, badgesAchieved);

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      __$$AvatarModelImplCopyWithImpl<_$AvatarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarModelImplToJson(
      this,
    );
  }
}

abstract class _AvatarModel implements AvatarModel {
  const factory _AvatarModel(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'badges_needed') final int? badgesNeeded,
          @JsonKey(name: 'reward_points') final int? rewardPoints,
          @JsonKey(name: 'badges_achieved') final int? badgesAchieved}) =
      _$AvatarModelImpl;

  factory _AvatarModel.fromJson(Map<String, dynamic> json) =
      _$AvatarModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'badges_needed')
  int? get badgesNeeded;
  @override
  @JsonKey(name: 'reward_points')
  int? get rewardPoints;
  @override
  @JsonKey(name: 'badges_achieved')
  int? get badgesAchieved;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
