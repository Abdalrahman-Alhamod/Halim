// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievements_board_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AchievementsBoardModel _$AchievementsBoardModelFromJson(
    Map<String, dynamic> json) {
  return _AchievementsBoardModel.fromJson(json);
}

/// @nodoc
mixin _$AchievementsBoardModel {
  @JsonKey(name: 'avatar')
  AvatarModel? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  int? get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'courses_count')
  int? get coursesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_hours')
  num? get numberOfHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributions')
  int? get contributions => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_time')
  num? get avgTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'rank')
  String? get rank => throw _privateConstructorUsedError;

  /// Serializes this AchievementsBoardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementsBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementsBoardModelCopyWith<AchievementsBoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsBoardModelCopyWith<$Res> {
  factory $AchievementsBoardModelCopyWith(AchievementsBoardModel value,
          $Res Function(AchievementsBoardModel) then) =
      _$AchievementsBoardModelCopyWithImpl<$Res, AchievementsBoardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar') AvatarModel? avatar,
      @JsonKey(name: 'points') int? points,
      @JsonKey(name: 'courses_count') int? coursesCount,
      @JsonKey(name: 'number_of_hours') num? numberOfHours,
      @JsonKey(name: 'contributions') int? contributions,
      @JsonKey(name: 'avg_time') num? avgTime,
      @JsonKey(name: 'rank') String? rank});

  $AvatarModelCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$AchievementsBoardModelCopyWithImpl<$Res,
        $Val extends AchievementsBoardModel>
    implements $AchievementsBoardModelCopyWith<$Res> {
  _$AchievementsBoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementsBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? points = freezed,
    Object? coursesCount = freezed,
    Object? numberOfHours = freezed,
    Object? contributions = freezed,
    Object? avgTime = freezed,
    Object? rank = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarModel?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      coursesCount: freezed == coursesCount
          ? _value.coursesCount
          : coursesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfHours: freezed == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as num?,
      contributions: freezed == contributions
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int?,
      avgTime: freezed == avgTime
          ? _value.avgTime
          : avgTime // ignore: cast_nullable_to_non_nullable
              as num?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AchievementsBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvatarModelCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarModelCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AchievementsBoardModelImplCopyWith<$Res>
    implements $AchievementsBoardModelCopyWith<$Res> {
  factory _$$AchievementsBoardModelImplCopyWith(
          _$AchievementsBoardModelImpl value,
          $Res Function(_$AchievementsBoardModelImpl) then) =
      __$$AchievementsBoardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar') AvatarModel? avatar,
      @JsonKey(name: 'points') int? points,
      @JsonKey(name: 'courses_count') int? coursesCount,
      @JsonKey(name: 'number_of_hours') num? numberOfHours,
      @JsonKey(name: 'contributions') int? contributions,
      @JsonKey(name: 'avg_time') num? avgTime,
      @JsonKey(name: 'rank') String? rank});

  @override
  $AvatarModelCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$AchievementsBoardModelImplCopyWithImpl<$Res>
    extends _$AchievementsBoardModelCopyWithImpl<$Res,
        _$AchievementsBoardModelImpl>
    implements _$$AchievementsBoardModelImplCopyWith<$Res> {
  __$$AchievementsBoardModelImplCopyWithImpl(
      _$AchievementsBoardModelImpl _value,
      $Res Function(_$AchievementsBoardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementsBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? points = freezed,
    Object? coursesCount = freezed,
    Object? numberOfHours = freezed,
    Object? contributions = freezed,
    Object? avgTime = freezed,
    Object? rank = freezed,
  }) {
    return _then(_$AchievementsBoardModelImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarModel?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      coursesCount: freezed == coursesCount
          ? _value.coursesCount
          : coursesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfHours: freezed == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as num?,
      contributions: freezed == contributions
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int?,
      avgTime: freezed == avgTime
          ? _value.avgTime
          : avgTime // ignore: cast_nullable_to_non_nullable
              as num?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementsBoardModelImpl
    with DiagnosticableTreeMixin
    implements _AchievementsBoardModel {
  const _$AchievementsBoardModelImpl(
      {@JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'points') this.points,
      @JsonKey(name: 'courses_count') this.coursesCount,
      @JsonKey(name: 'number_of_hours') this.numberOfHours,
      @JsonKey(name: 'contributions') this.contributions,
      @JsonKey(name: 'avg_time') this.avgTime,
      @JsonKey(name: 'rank') this.rank});

  factory _$AchievementsBoardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementsBoardModelImplFromJson(json);

  @override
  @JsonKey(name: 'avatar')
  final AvatarModel? avatar;
  @override
  @JsonKey(name: 'points')
  final int? points;
  @override
  @JsonKey(name: 'courses_count')
  final int? coursesCount;
  @override
  @JsonKey(name: 'number_of_hours')
  final num? numberOfHours;
  @override
  @JsonKey(name: 'contributions')
  final int? contributions;
  @override
  @JsonKey(name: 'avg_time')
  final num? avgTime;
  @override
  @JsonKey(name: 'rank')
  final String? rank;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AchievementsBoardModel(avatar: $avatar, points: $points, coursesCount: $coursesCount, numberOfHours: $numberOfHours, contributions: $contributions, avgTime: $avgTime, rank: $rank)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AchievementsBoardModel'))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('points', points))
      ..add(DiagnosticsProperty('coursesCount', coursesCount))
      ..add(DiagnosticsProperty('numberOfHours', numberOfHours))
      ..add(DiagnosticsProperty('contributions', contributions))
      ..add(DiagnosticsProperty('avgTime', avgTime))
      ..add(DiagnosticsProperty('rank', rank));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementsBoardModelImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.coursesCount, coursesCount) ||
                other.coursesCount == coursesCount) &&
            (identical(other.numberOfHours, numberOfHours) ||
                other.numberOfHours == numberOfHours) &&
            (identical(other.contributions, contributions) ||
                other.contributions == contributions) &&
            (identical(other.avgTime, avgTime) || other.avgTime == avgTime) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, points, coursesCount,
      numberOfHours, contributions, avgTime, rank);

  /// Create a copy of AchievementsBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementsBoardModelImplCopyWith<_$AchievementsBoardModelImpl>
      get copyWith => __$$AchievementsBoardModelImplCopyWithImpl<
          _$AchievementsBoardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementsBoardModelImplToJson(
      this,
    );
  }
}

abstract class _AchievementsBoardModel implements AchievementsBoardModel {
  const factory _AchievementsBoardModel(
          {@JsonKey(name: 'avatar') final AvatarModel? avatar,
          @JsonKey(name: 'points') final int? points,
          @JsonKey(name: 'courses_count') final int? coursesCount,
          @JsonKey(name: 'number_of_hours') final num? numberOfHours,
          @JsonKey(name: 'contributions') final int? contributions,
          @JsonKey(name: 'avg_time') final num? avgTime,
          @JsonKey(name: 'rank') final String? rank}) =
      _$AchievementsBoardModelImpl;

  factory _AchievementsBoardModel.fromJson(Map<String, dynamic> json) =
      _$AchievementsBoardModelImpl.fromJson;

  @override
  @JsonKey(name: 'avatar')
  AvatarModel? get avatar;
  @override
  @JsonKey(name: 'points')
  int? get points;
  @override
  @JsonKey(name: 'courses_count')
  int? get coursesCount;
  @override
  @JsonKey(name: 'number_of_hours')
  num? get numberOfHours;
  @override
  @JsonKey(name: 'contributions')
  int? get contributions;
  @override
  @JsonKey(name: 'avg_time')
  num? get avgTime;
  @override
  @JsonKey(name: 'rank')
  String? get rank;

  /// Create a copy of AchievementsBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementsBoardModelImplCopyWith<_$AchievementsBoardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
