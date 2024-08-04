// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_block_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessonBlockModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoBlockModel video) video,
    required TResult Function(ReadingBlockModel reading) reading,
    required TResult Function(QuizBlockModel quiz) quiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoBlockModel video)? video,
    TResult? Function(ReadingBlockModel reading)? reading,
    TResult? Function(QuizBlockModel quiz)? quiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoBlockModel video)? video,
    TResult Function(ReadingBlockModel reading)? reading,
    TResult Function(QuizBlockModel quiz)? quiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Video value) video,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Quiz value) quiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video value)? video,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Quiz value)? quiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video value)? video,
    TResult Function(_Reading value)? reading,
    TResult Function(_Quiz value)? quiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonBlockModelCopyWith<$Res> {
  factory $LessonBlockModelCopyWith(
          LessonBlockModel value, $Res Function(LessonBlockModel) then) =
      _$LessonBlockModelCopyWithImpl<$Res, LessonBlockModel>;
}

/// @nodoc
class _$LessonBlockModelCopyWithImpl<$Res, $Val extends LessonBlockModel>
    implements $LessonBlockModelCopyWith<$Res> {
  _$LessonBlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoBlockModel video});

  $VideoBlockModelCopyWith<$Res> get video;
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$LessonBlockModelCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$VideoImpl(
      null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoBlockModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoBlockModelCopyWith<$Res> get video {
    return $VideoBlockModelCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$VideoImpl with DiagnosticableTreeMixin implements _Video {
  const _$VideoImpl(this.video, {final String? $type})
      : $type = $type ?? 'video';

  @override
  final VideoBlockModel video;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonBlockModel.video(video: $video)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonBlockModel.video'))
      ..add(DiagnosticsProperty('video', video));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoBlockModel video) video,
    required TResult Function(ReadingBlockModel reading) reading,
    required TResult Function(QuizBlockModel quiz) quiz,
  }) {
    return video(this.video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoBlockModel video)? video,
    TResult? Function(ReadingBlockModel reading)? reading,
    TResult? Function(QuizBlockModel quiz)? quiz,
  }) {
    return video?.call(this.video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoBlockModel video)? video,
    TResult Function(ReadingBlockModel reading)? reading,
    TResult Function(QuizBlockModel quiz)? quiz,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this.video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Video value) video,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Quiz value) quiz,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video value)? video,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Quiz value)? quiz,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video value)? video,
    TResult Function(_Reading value)? reading,
    TResult Function(_Quiz value)? quiz,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements LessonBlockModel {
  const factory _Video(final VideoBlockModel video) = _$VideoImpl;

  VideoBlockModel get video;
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadingImplCopyWith<$Res> {
  factory _$$ReadingImplCopyWith(
          _$ReadingImpl value, $Res Function(_$ReadingImpl) then) =
      __$$ReadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReadingBlockModel reading});

  $ReadingBlockModelCopyWith<$Res> get reading;
}

/// @nodoc
class __$$ReadingImplCopyWithImpl<$Res>
    extends _$LessonBlockModelCopyWithImpl<$Res, _$ReadingImpl>
    implements _$$ReadingImplCopyWith<$Res> {
  __$$ReadingImplCopyWithImpl(
      _$ReadingImpl _value, $Res Function(_$ReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reading = null,
  }) {
    return _then(_$ReadingImpl(
      null == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as ReadingBlockModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReadingBlockModelCopyWith<$Res> get reading {
    return $ReadingBlockModelCopyWith<$Res>(_value.reading, (value) {
      return _then(_value.copyWith(reading: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ReadingImpl with DiagnosticableTreeMixin implements _Reading {
  const _$ReadingImpl(this.reading, {final String? $type})
      : $type = $type ?? 'reading';

  @override
  final ReadingBlockModel reading;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonBlockModel.reading(reading: $reading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonBlockModel.reading'))
      ..add(DiagnosticsProperty('reading', reading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingImpl &&
            (identical(other.reading, reading) || other.reading == reading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingImplCopyWith<_$ReadingImpl> get copyWith =>
      __$$ReadingImplCopyWithImpl<_$ReadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoBlockModel video) video,
    required TResult Function(ReadingBlockModel reading) reading,
    required TResult Function(QuizBlockModel quiz) quiz,
  }) {
    return reading(this.reading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoBlockModel video)? video,
    TResult? Function(ReadingBlockModel reading)? reading,
    TResult? Function(QuizBlockModel quiz)? quiz,
  }) {
    return reading?.call(this.reading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoBlockModel video)? video,
    TResult Function(ReadingBlockModel reading)? reading,
    TResult Function(QuizBlockModel quiz)? quiz,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(this.reading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Video value) video,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Quiz value) quiz,
  }) {
    return reading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video value)? video,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Quiz value)? quiz,
  }) {
    return reading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video value)? video,
    TResult Function(_Reading value)? reading,
    TResult Function(_Quiz value)? quiz,
    required TResult orElse(),
  }) {
    if (reading != null) {
      return reading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingImplToJson(
      this,
    );
  }
}

abstract class _Reading implements LessonBlockModel {
  const factory _Reading(final ReadingBlockModel reading) = _$ReadingImpl;

  ReadingBlockModel get reading;
  @JsonKey(ignore: true)
  _$$ReadingImplCopyWith<_$ReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizBlockModel quiz});

  $QuizBlockModelCopyWith<$Res> get quiz;
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$LessonBlockModelCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quiz = null,
  }) {
    return _then(_$QuizImpl(
      null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizBlockModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizBlockModelCopyWith<$Res> get quiz {
    return $QuizBlockModelCopyWith<$Res>(_value.quiz, (value) {
      return _then(_value.copyWith(quiz: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$QuizImpl with DiagnosticableTreeMixin implements _Quiz {
  const _$QuizImpl(this.quiz, {final String? $type}) : $type = $type ?? 'quiz';

  @override
  final QuizBlockModel quiz;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonBlockModel.quiz(quiz: $quiz)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonBlockModel.quiz'))
      ..add(DiagnosticsProperty('quiz', quiz));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quiz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoBlockModel video) video,
    required TResult Function(ReadingBlockModel reading) reading,
    required TResult Function(QuizBlockModel quiz) quiz,
  }) {
    return quiz(this.quiz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoBlockModel video)? video,
    TResult? Function(ReadingBlockModel reading)? reading,
    TResult? Function(QuizBlockModel quiz)? quiz,
  }) {
    return quiz?.call(this.quiz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoBlockModel video)? video,
    TResult Function(ReadingBlockModel reading)? reading,
    TResult Function(QuizBlockModel quiz)? quiz,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(this.quiz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Video value) video,
    required TResult Function(_Reading value) reading,
    required TResult Function(_Quiz value) quiz,
  }) {
    return quiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Video value)? video,
    TResult? Function(_Reading value)? reading,
    TResult? Function(_Quiz value)? quiz,
  }) {
    return quiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Video value)? video,
    TResult Function(_Reading value)? reading,
    TResult Function(_Quiz value)? quiz,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements LessonBlockModel {
  const factory _Quiz(final QuizBlockModel quiz) = _$QuizImpl;

  QuizBlockModel get quiz;
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoBlockModel _$VideoBlockModelFromJson(Map<String, dynamic> json) {
  return _VideoBlockModel.fromJson(json);
}

/// @nodoc
mixin _$VideoBlockModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isPreview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoBlockModelCopyWith<VideoBlockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoBlockModelCopyWith<$Res> {
  factory $VideoBlockModelCopyWith(
          VideoBlockModel value, $Res Function(VideoBlockModel) then) =
      _$VideoBlockModelCopyWithImpl<$Res, VideoBlockModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? duration,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isPreview});
}

/// @nodoc
class _$VideoBlockModelCopyWithImpl<$Res, $Val extends VideoBlockModel>
    implements $VideoBlockModelCopyWith<$Res> {
  _$VideoBlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isCompleted = freezed,
    Object? isPreview = freezed,
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoBlockModelImplCopyWith<$Res>
    implements $VideoBlockModelCopyWith<$Res> {
  factory _$$VideoBlockModelImplCopyWith(_$VideoBlockModelImpl value,
          $Res Function(_$VideoBlockModelImpl) then) =
      __$$VideoBlockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? duration,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isPreview});
}

/// @nodoc
class __$$VideoBlockModelImplCopyWithImpl<$Res>
    extends _$VideoBlockModelCopyWithImpl<$Res, _$VideoBlockModelImpl>
    implements _$$VideoBlockModelImplCopyWith<$Res> {
  __$$VideoBlockModelImplCopyWithImpl(
      _$VideoBlockModelImpl _value, $Res Function(_$VideoBlockModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isCompleted = freezed,
    Object? isPreview = freezed,
  }) {
    return _then(_$VideoBlockModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoBlockModelImpl
    with DiagnosticableTreeMixin
    implements _VideoBlockModel {
  const _$VideoBlockModelImpl(
      {this.id,
      this.title,
      this.duration,
      @JsonKey(name: 'is_completed') this.isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      this.isPreview});

  factory _$VideoBlockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoBlockModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'is_completed')
  final bool? isCompleted;
  @override
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  final bool? isPreview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoBlockModel(id: $id, title: $title, duration: $duration, isCompleted: $isCompleted, isPreview: $isPreview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoBlockModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('isCompleted', isCompleted))
      ..add(DiagnosticsProperty('isPreview', isPreview));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoBlockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, duration, isCompleted, isPreview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoBlockModelImplCopyWith<_$VideoBlockModelImpl> get copyWith =>
      __$$VideoBlockModelImplCopyWithImpl<_$VideoBlockModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoBlockModelImplToJson(
      this,
    );
  }
}

abstract class _VideoBlockModel implements VideoBlockModel {
  const factory _VideoBlockModel(
      {final int? id,
      final String? title,
      final int? duration,
      @JsonKey(name: 'is_completed') final bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      final bool? isPreview}) = _$VideoBlockModelImpl;

  factory _VideoBlockModel.fromJson(Map<String, dynamic> json) =
      _$VideoBlockModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'is_completed')
  bool? get isCompleted;
  @override
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isPreview;
  @override
  @JsonKey(ignore: true)
  _$$VideoBlockModelImplCopyWith<_$VideoBlockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingBlockModel _$ReadingBlockModelFromJson(Map<String, dynamic> json) {
  return _ReadingBlockModel.fromJson(json);
}

/// @nodoc
mixin _$ReadingBlockModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isPreview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadingBlockModelCopyWith<ReadingBlockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingBlockModelCopyWith<$Res> {
  factory $ReadingBlockModelCopyWith(
          ReadingBlockModel value, $Res Function(ReadingBlockModel) then) =
      _$ReadingBlockModelCopyWithImpl<$Res, ReadingBlockModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? duration,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isPreview});
}

/// @nodoc
class _$ReadingBlockModelCopyWithImpl<$Res, $Val extends ReadingBlockModel>
    implements $ReadingBlockModelCopyWith<$Res> {
  _$ReadingBlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isCompleted = freezed,
    Object? isPreview = freezed,
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingBlockModelImplCopyWith<$Res>
    implements $ReadingBlockModelCopyWith<$Res> {
  factory _$$ReadingBlockModelImplCopyWith(_$ReadingBlockModelImpl value,
          $Res Function(_$ReadingBlockModelImpl) then) =
      __$$ReadingBlockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? duration,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isPreview});
}

/// @nodoc
class __$$ReadingBlockModelImplCopyWithImpl<$Res>
    extends _$ReadingBlockModelCopyWithImpl<$Res, _$ReadingBlockModelImpl>
    implements _$$ReadingBlockModelImplCopyWith<$Res> {
  __$$ReadingBlockModelImplCopyWithImpl(_$ReadingBlockModelImpl _value,
      $Res Function(_$ReadingBlockModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isCompleted = freezed,
    Object? isPreview = freezed,
  }) {
    return _then(_$ReadingBlockModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingBlockModelImpl
    with DiagnosticableTreeMixin
    implements _ReadingBlockModel {
  const _$ReadingBlockModelImpl(
      {this.id,
      this.title,
      this.duration,
      @JsonKey(name: 'is_completed') this.isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      this.isPreview});

  factory _$ReadingBlockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingBlockModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'is_completed')
  final bool? isCompleted;
  @override
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  final bool? isPreview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReadingBlockModel(id: $id, title: $title, duration: $duration, isCompleted: $isCompleted, isPreview: $isPreview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReadingBlockModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('isCompleted', isCompleted))
      ..add(DiagnosticsProperty('isPreview', isPreview));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingBlockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, duration, isCompleted, isPreview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingBlockModelImplCopyWith<_$ReadingBlockModelImpl> get copyWith =>
      __$$ReadingBlockModelImplCopyWithImpl<_$ReadingBlockModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingBlockModelImplToJson(
      this,
    );
  }
}

abstract class _ReadingBlockModel implements ReadingBlockModel {
  const factory _ReadingBlockModel(
      {final int? id,
      final String? title,
      final int? duration,
      @JsonKey(name: 'is_completed') final bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      final bool? isPreview}) = _$ReadingBlockModelImpl;

  factory _ReadingBlockModel.fromJson(Map<String, dynamic> json) =
      _$ReadingBlockModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'is_completed')
  bool? get isCompleted;
  @override
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isPreview;
  @override
  @JsonKey(ignore: true)
  _$$ReadingBlockModelImplCopyWith<_$ReadingBlockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizBlockModel _$QuizBlockModelFromJson(Map<String, dynamic> json) {
  return _QuizBlockModel.fromJson(json);
}

/// @nodoc
mixin _$QuizBlockModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isPreview => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz')
  QuizBlockDetailsModel? get quizDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizBlockModelCopyWith<QuizBlockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizBlockModelCopyWith<$Res> {
  factory $QuizBlockModelCopyWith(
          QuizBlockModel value, $Res Function(QuizBlockModel) then) =
      _$QuizBlockModelCopyWithImpl<$Res, QuizBlockModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? duration,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isPreview,
      @JsonKey(name: 'quiz') QuizBlockDetailsModel? quizDetails});

  $QuizBlockDetailsModelCopyWith<$Res>? get quizDetails;
}

/// @nodoc
class _$QuizBlockModelCopyWithImpl<$Res, $Val extends QuizBlockModel>
    implements $QuizBlockModelCopyWith<$Res> {
  _$QuizBlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isCompleted = freezed,
    Object? isPreview = freezed,
    Object? quizDetails = freezed,
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
      quizDetails: freezed == quizDetails
          ? _value.quizDetails
          : quizDetails // ignore: cast_nullable_to_non_nullable
              as QuizBlockDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizBlockDetailsModelCopyWith<$Res>? get quizDetails {
    if (_value.quizDetails == null) {
      return null;
    }

    return $QuizBlockDetailsModelCopyWith<$Res>(_value.quizDetails!, (value) {
      return _then(_value.copyWith(quizDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizBlockModelImplCopyWith<$Res>
    implements $QuizBlockModelCopyWith<$Res> {
  factory _$$QuizBlockModelImplCopyWith(_$QuizBlockModelImpl value,
          $Res Function(_$QuizBlockModelImpl) then) =
      __$$QuizBlockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? duration,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isPreview,
      @JsonKey(name: 'quiz') QuizBlockDetailsModel? quizDetails});

  @override
  $QuizBlockDetailsModelCopyWith<$Res>? get quizDetails;
}

/// @nodoc
class __$$QuizBlockModelImplCopyWithImpl<$Res>
    extends _$QuizBlockModelCopyWithImpl<$Res, _$QuizBlockModelImpl>
    implements _$$QuizBlockModelImplCopyWith<$Res> {
  __$$QuizBlockModelImplCopyWithImpl(
      _$QuizBlockModelImpl _value, $Res Function(_$QuizBlockModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isCompleted = freezed,
    Object? isPreview = freezed,
    Object? quizDetails = freezed,
  }) {
    return _then(_$QuizBlockModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
      quizDetails: freezed == quizDetails
          ? _value.quizDetails
          : quizDetails // ignore: cast_nullable_to_non_nullable
              as QuizBlockDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizBlockModelImpl
    with DiagnosticableTreeMixin
    implements _QuizBlockModel {
  const _$QuizBlockModelImpl(
      {this.id,
      this.title,
      this.duration,
      @JsonKey(name: 'is_completed') this.isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      this.isPreview,
      @JsonKey(name: 'quiz') this.quizDetails});

  factory _$QuizBlockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizBlockModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'is_completed')
  final bool? isCompleted;
  @override
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  final bool? isPreview;
  @override
  @JsonKey(name: 'quiz')
  final QuizBlockDetailsModel? quizDetails;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizBlockModel(id: $id, title: $title, duration: $duration, isCompleted: $isCompleted, isPreview: $isPreview, quizDetails: $quizDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizBlockModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('isCompleted', isCompleted))
      ..add(DiagnosticsProperty('isPreview', isPreview))
      ..add(DiagnosticsProperty('quizDetails', quizDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizBlockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview) &&
            (identical(other.quizDetails, quizDetails) ||
                other.quizDetails == quizDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, duration, isCompleted, isPreview, quizDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizBlockModelImplCopyWith<_$QuizBlockModelImpl> get copyWith =>
      __$$QuizBlockModelImplCopyWithImpl<_$QuizBlockModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizBlockModelImplToJson(
      this,
    );
  }
}

abstract class _QuizBlockModel implements QuizBlockModel {
  const factory _QuizBlockModel(
      {final int? id,
      final String? title,
      final int? duration,
      @JsonKey(name: 'is_completed') final bool? isCompleted,
      @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
      final bool? isPreview,
      @JsonKey(name: 'quiz')
      final QuizBlockDetailsModel? quizDetails}) = _$QuizBlockModelImpl;

  factory _QuizBlockModel.fromJson(Map<String, dynamic> json) =
      _$QuizBlockModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'is_completed')
  bool? get isCompleted;
  @override
  @JsonKey(name: 'is_preview', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isPreview;
  @override
  @JsonKey(name: 'quiz')
  QuizBlockDetailsModel? get quizDetails;
  @override
  @JsonKey(ignore: true)
  _$$QuizBlockModelImplCopyWith<_$QuizBlockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizBlockDetailsModel _$QuizBlockDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _QuizBlockDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$QuizBlockDetailsModel {
  @JsonKey(name: 'questions_number')
  int? get questionsNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizBlockDetailsModelCopyWith<QuizBlockDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizBlockDetailsModelCopyWith<$Res> {
  factory $QuizBlockDetailsModelCopyWith(QuizBlockDetailsModel value,
          $Res Function(QuizBlockDetailsModel) then) =
      _$QuizBlockDetailsModelCopyWithImpl<$Res, QuizBlockDetailsModel>;
  @useResult
  $Res call({@JsonKey(name: 'questions_number') int? questionsNumber});
}

/// @nodoc
class _$QuizBlockDetailsModelCopyWithImpl<$Res,
        $Val extends QuizBlockDetailsModel>
    implements $QuizBlockDetailsModelCopyWith<$Res> {
  _$QuizBlockDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionsNumber = freezed,
  }) {
    return _then(_value.copyWith(
      questionsNumber: freezed == questionsNumber
          ? _value.questionsNumber
          : questionsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizBlockDetailsModelImplCopyWith<$Res>
    implements $QuizBlockDetailsModelCopyWith<$Res> {
  factory _$$QuizBlockDetailsModelImplCopyWith(
          _$QuizBlockDetailsModelImpl value,
          $Res Function(_$QuizBlockDetailsModelImpl) then) =
      __$$QuizBlockDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'questions_number') int? questionsNumber});
}

/// @nodoc
class __$$QuizBlockDetailsModelImplCopyWithImpl<$Res>
    extends _$QuizBlockDetailsModelCopyWithImpl<$Res,
        _$QuizBlockDetailsModelImpl>
    implements _$$QuizBlockDetailsModelImplCopyWith<$Res> {
  __$$QuizBlockDetailsModelImplCopyWithImpl(_$QuizBlockDetailsModelImpl _value,
      $Res Function(_$QuizBlockDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionsNumber = freezed,
  }) {
    return _then(_$QuizBlockDetailsModelImpl(
      questionsNumber: freezed == questionsNumber
          ? _value.questionsNumber
          : questionsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizBlockDetailsModelImpl
    with DiagnosticableTreeMixin
    implements _QuizBlockDetailsModel {
  const _$QuizBlockDetailsModelImpl(
      {@JsonKey(name: 'questions_number') this.questionsNumber});

  factory _$QuizBlockDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizBlockDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'questions_number')
  final int? questionsNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizBlockDetailsModel(questionsNumber: $questionsNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizBlockDetailsModel'))
      ..add(DiagnosticsProperty('questionsNumber', questionsNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizBlockDetailsModelImpl &&
            (identical(other.questionsNumber, questionsNumber) ||
                other.questionsNumber == questionsNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionsNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizBlockDetailsModelImplCopyWith<_$QuizBlockDetailsModelImpl>
      get copyWith => __$$QuizBlockDetailsModelImplCopyWithImpl<
          _$QuizBlockDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizBlockDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _QuizBlockDetailsModel implements QuizBlockDetailsModel {
  const factory _QuizBlockDetailsModel(
          {@JsonKey(name: 'questions_number') final int? questionsNumber}) =
      _$QuizBlockDetailsModelImpl;

  factory _QuizBlockDetailsModel.fromJson(Map<String, dynamic> json) =
      _$QuizBlockDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'questions_number')
  int? get questionsNumber;
  @override
  @JsonKey(ignore: true)
  _$$QuizBlockDetailsModelImplCopyWith<_$QuizBlockDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
