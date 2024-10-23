// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anouncement_box_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementBoxModel _$AnnouncementBoxModelFromJson(Map<String, dynamic> json) {
  return _AnnouncementBoxModel.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementBoxModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mentor')
  MentorCardModel? get mentor => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementBoxModelCopyWith<AnnouncementBoxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementBoxModelCopyWith<$Res> {
  factory $AnnouncementBoxModelCopyWith(AnnouncementBoxModel value,
          $Res Function(AnnouncementBoxModel) then) =
      _$AnnouncementBoxModelCopyWithImpl<$Res, AnnouncementBoxModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'mentor') MentorCardModel? mentor,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $MentorCardModelCopyWith<$Res>? get mentor;
}

/// @nodoc
class _$AnnouncementBoxModelCopyWithImpl<$Res,
        $Val extends AnnouncementBoxModel>
    implements $AnnouncementBoxModelCopyWith<$Res> {
  _$AnnouncementBoxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mentor = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as MentorCardModel?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MentorCardModelCopyWith<$Res>? get mentor {
    if (_value.mentor == null) {
      return null;
    }

    return $MentorCardModelCopyWith<$Res>(_value.mentor!, (value) {
      return _then(_value.copyWith(mentor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnouncementBoxModelImplCopyWith<$Res>
    implements $AnnouncementBoxModelCopyWith<$Res> {
  factory _$$AnnouncementBoxModelImplCopyWith(_$AnnouncementBoxModelImpl value,
          $Res Function(_$AnnouncementBoxModelImpl) then) =
      __$$AnnouncementBoxModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'mentor') MentorCardModel? mentor,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $MentorCardModelCopyWith<$Res>? get mentor;
}

/// @nodoc
class __$$AnnouncementBoxModelImplCopyWithImpl<$Res>
    extends _$AnnouncementBoxModelCopyWithImpl<$Res, _$AnnouncementBoxModelImpl>
    implements _$$AnnouncementBoxModelImplCopyWith<$Res> {
  __$$AnnouncementBoxModelImplCopyWithImpl(_$AnnouncementBoxModelImpl _value,
      $Res Function(_$AnnouncementBoxModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mentor = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$AnnouncementBoxModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mentor: freezed == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as MentorCardModel?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementBoxModelImpl
    with DiagnosticableTreeMixin
    implements _AnnouncementBoxModel {
  const _$AnnouncementBoxModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'mentor') this.mentor,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$AnnouncementBoxModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementBoxModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'mentor')
  final MentorCardModel? mentor;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnouncementBoxModel(id: $id, mentor: $mentor, title: $title, content: $content, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnnouncementBoxModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('mentor', mentor))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementBoxModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mentor, mentor) || other.mentor == mentor) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mentor, title, content, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementBoxModelImplCopyWith<_$AnnouncementBoxModelImpl>
      get copyWith =>
          __$$AnnouncementBoxModelImplCopyWithImpl<_$AnnouncementBoxModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementBoxModelImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementBoxModel implements AnnouncementBoxModel {
  const factory _AnnouncementBoxModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'mentor') final MentorCardModel? mentor,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'content') final String? content,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$AnnouncementBoxModelImpl;

  factory _AnnouncementBoxModel.fromJson(Map<String, dynamic> json) =
      _$AnnouncementBoxModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'mentor')
  MentorCardModel? get mentor;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementBoxModelImplCopyWith<_$AnnouncementBoxModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
