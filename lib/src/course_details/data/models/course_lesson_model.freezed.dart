// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseLessonModel _$CourseLessonModelFromJson(Map<String, dynamic> json) {
  return _CourseLessonModel.fromJson(json);
}

/// @nodoc
mixin _$CourseLessonModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_type')
  LessonType? get lessonType => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_preview')
  bool? get isPreview => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz')
  Quiz? get quiz => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  Video? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'reading')
  Reading? get reading => throw _privateConstructorUsedError;

  /// Serializes this CourseLessonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseLessonModelCopyWith<CourseLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseLessonModelCopyWith<$Res> {
  factory $CourseLessonModelCopyWith(
          CourseLessonModel value, $Res Function(CourseLessonModel) then) =
      _$CourseLessonModelCopyWithImpl<$Res, CourseLessonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'lesson_type') LessonType? lessonType,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'is_preview') bool? isPreview,
      @JsonKey(name: 'quiz') Quiz? quiz,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'video') Video? video,
      @JsonKey(name: 'reading') Reading? reading});

  $LessonTypeCopyWith<$Res>? get lessonType;
  $QuizCopyWith<$Res>? get quiz;
  $VideoCopyWith<$Res>? get video;
  $ReadingCopyWith<$Res>? get reading;
}

/// @nodoc
class _$CourseLessonModelCopyWithImpl<$Res, $Val extends CourseLessonModel>
    implements $CourseLessonModelCopyWith<$Res> {
  _$CourseLessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonType = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isPreview = freezed,
    Object? quiz = freezed,
    Object? isCompleted = freezed,
    Object? video = freezed,
    Object? reading = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as LessonType?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video?,
      reading: freezed == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as Reading?,
    ) as $Val);
  }

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonTypeCopyWith<$Res>? get lessonType {
    if (_value.lessonType == null) {
      return null;
    }

    return $LessonTypeCopyWith<$Res>(_value.lessonType!, (value) {
      return _then(_value.copyWith(lessonType: value) as $Val);
    });
  }

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizCopyWith<$Res>? get quiz {
    if (_value.quiz == null) {
      return null;
    }

    return $QuizCopyWith<$Res>(_value.quiz!, (value) {
      return _then(_value.copyWith(quiz: value) as $Val);
    });
  }

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingCopyWith<$Res>? get reading {
    if (_value.reading == null) {
      return null;
    }

    return $ReadingCopyWith<$Res>(_value.reading!, (value) {
      return _then(_value.copyWith(reading: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseLessonModelImplCopyWith<$Res>
    implements $CourseLessonModelCopyWith<$Res> {
  factory _$$CourseLessonModelImplCopyWith(_$CourseLessonModelImpl value,
          $Res Function(_$CourseLessonModelImpl) then) =
      __$$CourseLessonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'lesson_type') LessonType? lessonType,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'is_preview') bool? isPreview,
      @JsonKey(name: 'quiz') Quiz? quiz,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      @JsonKey(name: 'video') Video? video,
      @JsonKey(name: 'reading') Reading? reading});

  @override
  $LessonTypeCopyWith<$Res>? get lessonType;
  @override
  $QuizCopyWith<$Res>? get quiz;
  @override
  $VideoCopyWith<$Res>? get video;
  @override
  $ReadingCopyWith<$Res>? get reading;
}

/// @nodoc
class __$$CourseLessonModelImplCopyWithImpl<$Res>
    extends _$CourseLessonModelCopyWithImpl<$Res, _$CourseLessonModelImpl>
    implements _$$CourseLessonModelImplCopyWith<$Res> {
  __$$CourseLessonModelImplCopyWithImpl(_$CourseLessonModelImpl _value,
      $Res Function(_$CourseLessonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonType = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? isPreview = freezed,
    Object? quiz = freezed,
    Object? isCompleted = freezed,
    Object? video = freezed,
    Object? reading = freezed,
  }) {
    return _then(_$CourseLessonModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as LessonType?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isPreview: freezed == isPreview
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool?,
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video?,
      reading: freezed == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as Reading?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseLessonModelImpl
    with DiagnosticableTreeMixin
    implements _CourseLessonModel {
  const _$CourseLessonModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'lesson_type') this.lessonType,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'is_preview') this.isPreview,
      @JsonKey(name: 'quiz') this.quiz,
      @JsonKey(name: 'is_completed') this.isCompleted,
      @JsonKey(name: 'video') this.video,
      @JsonKey(name: 'reading') this.reading});

  factory _$CourseLessonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseLessonModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'lesson_type')
  final LessonType? lessonType;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'is_preview')
  final bool? isPreview;
  @override
  @JsonKey(name: 'quiz')
  final Quiz? quiz;
  @override
  @JsonKey(name: 'is_completed')
  final bool? isCompleted;
  @override
  @JsonKey(name: 'video')
  final Video? video;
  @override
  @JsonKey(name: 'reading')
  final Reading? reading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseLessonModel(id: $id, lessonType: $lessonType, title: $title, duration: $duration, isPreview: $isPreview, quiz: $quiz, isCompleted: $isCompleted, video: $video, reading: $reading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseLessonModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lessonType', lessonType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('isPreview', isPreview))
      ..add(DiagnosticsProperty('quiz', quiz))
      ..add(DiagnosticsProperty('isCompleted', isCompleted))
      ..add(DiagnosticsProperty('video', video))
      ..add(DiagnosticsProperty('reading', reading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseLessonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview) &&
            (identical(other.quiz, quiz) || other.quiz == quiz) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.reading, reading) || other.reading == reading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lessonType, title, duration,
      isPreview, quiz, isCompleted, video, reading);

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseLessonModelImplCopyWith<_$CourseLessonModelImpl> get copyWith =>
      __$$CourseLessonModelImplCopyWithImpl<_$CourseLessonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseLessonModelImplToJson(
      this,
    );
  }
}

abstract class _CourseLessonModel implements CourseLessonModel {
  const factory _CourseLessonModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'lesson_type') final LessonType? lessonType,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'duration') final int? duration,
          @JsonKey(name: 'is_preview') final bool? isPreview,
          @JsonKey(name: 'quiz') final Quiz? quiz,
          @JsonKey(name: 'is_completed') final bool? isCompleted,
          @JsonKey(name: 'video') final Video? video,
          @JsonKey(name: 'reading') final Reading? reading}) =
      _$CourseLessonModelImpl;

  factory _CourseLessonModel.fromJson(Map<String, dynamic> json) =
      _$CourseLessonModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'lesson_type')
  LessonType? get lessonType;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'is_preview')
  bool? get isPreview;
  @override
  @JsonKey(name: 'quiz')
  Quiz? get quiz;
  @override
  @JsonKey(name: 'is_completed')
  bool? get isCompleted;
  @override
  @JsonKey(name: 'video')
  Video? get video;
  @override
  @JsonKey(name: 'reading')
  Reading? get reading;

  /// Create a copy of CourseLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseLessonModelImplCopyWith<_$CourseLessonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonType _$LessonTypeFromJson(Map<String, dynamic> json) {
  return _LessonType.fromJson(json);
}

/// @nodoc
mixin _$LessonType {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this LessonType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonTypeCopyWith<LessonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTypeCopyWith<$Res> {
  factory $LessonTypeCopyWith(
          LessonType value, $Res Function(LessonType) then) =
      _$LessonTypeCopyWithImpl<$Res, LessonType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$LessonTypeCopyWithImpl<$Res, $Val extends LessonType>
    implements $LessonTypeCopyWith<$Res> {
  _$LessonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonType
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
abstract class _$$LessonTypeImplCopyWith<$Res>
    implements $LessonTypeCopyWith<$Res> {
  factory _$$LessonTypeImplCopyWith(
          _$LessonTypeImpl value, $Res Function(_$LessonTypeImpl) then) =
      __$$LessonTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$LessonTypeImplCopyWithImpl<$Res>
    extends _$LessonTypeCopyWithImpl<$Res, _$LessonTypeImpl>
    implements _$$LessonTypeImplCopyWith<$Res> {
  __$$LessonTypeImplCopyWithImpl(
      _$LessonTypeImpl _value, $Res Function(_$LessonTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$LessonTypeImpl(
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
class _$LessonTypeImpl with DiagnosticableTreeMixin implements _LessonType {
  const _$LessonTypeImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$LessonTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonTypeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonType(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of LessonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonTypeImplCopyWith<_$LessonTypeImpl> get copyWith =>
      __$$LessonTypeImplCopyWithImpl<_$LessonTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonTypeImplToJson(
      this,
    );
  }
}

abstract class _LessonType implements LessonType {
  const factory _LessonType(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$LessonTypeImpl;

  factory _LessonType.fromJson(Map<String, dynamic> json) =
      _$LessonTypeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of LessonType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonTypeImplCopyWith<_$LessonTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  @JsonKey(name: 'questions_number')
  int? get questionsNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'questions')
  List<Question>? get questions => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_taken')
  DateTime? get lastTaken => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade')
  num? get grade => throw _privateConstructorUsedError;

  /// Serializes this Quiz to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Quiz
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questions_number') int? questionsNumber,
      @JsonKey(name: 'questions') List<Question>? questions,
      @JsonKey(name: 'last_taken') DateTime? lastTaken,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'grade') num? grade});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Quiz
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionsNumber = freezed,
    Object? questions = freezed,
    Object? lastTaken = freezed,
    Object? status = freezed,
    Object? grade = freezed,
  }) {
    return _then(_value.copyWith(
      questionsNumber: freezed == questionsNumber
          ? _value.questionsNumber
          : questionsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      lastTaken: freezed == lastTaken
          ? _value.lastTaken
          : lastTaken // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questions_number') int? questionsNumber,
      @JsonKey(name: 'questions') List<Question>? questions,
      @JsonKey(name: 'last_taken') DateTime? lastTaken,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'grade') num? grade});
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  /// Create a copy of Quiz
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionsNumber = freezed,
    Object? questions = freezed,
    Object? lastTaken = freezed,
    Object? status = freezed,
    Object? grade = freezed,
  }) {
    return _then(_$QuizImpl(
      questionsNumber: freezed == questionsNumber
          ? _value.questionsNumber
          : questionsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      lastTaken: freezed == lastTaken
          ? _value.lastTaken
          : lastTaken // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizImpl with DiagnosticableTreeMixin implements _Quiz {
  const _$QuizImpl(
      {@JsonKey(name: 'questions_number') this.questionsNumber,
      @JsonKey(name: 'questions') final List<Question>? questions,
      @JsonKey(name: 'last_taken') this.lastTaken,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'grade') this.grade})
      : _questions = questions;

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  @JsonKey(name: 'questions_number')
  final int? questionsNumber;
  final List<Question>? _questions;
  @override
  @JsonKey(name: 'questions')
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'last_taken')
  final DateTime? lastTaken;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'grade')
  final num? grade;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Quiz(questionsNumber: $questionsNumber, questions: $questions, lastTaken: $lastTaken, status: $status, grade: $grade)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Quiz'))
      ..add(DiagnosticsProperty('questionsNumber', questionsNumber))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('lastTaken', lastTaken))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('grade', grade));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.questionsNumber, questionsNumber) ||
                other.questionsNumber == questionsNumber) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.lastTaken, lastTaken) ||
                other.lastTaken == lastTaken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionsNumber,
      const DeepCollectionEquality().hash(_questions),
      lastTaken,
      status,
      grade);

  /// Create a copy of Quiz
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {@JsonKey(name: 'questions_number') final int? questionsNumber,
      @JsonKey(name: 'questions') final List<Question>? questions,
      @JsonKey(name: 'last_taken') final DateTime? lastTaken,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'grade') final num? grade}) = _$QuizImpl;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  @JsonKey(name: 'questions_number')
  int? get questionsNumber;
  @override
  @JsonKey(name: 'questions')
  List<Question>? get questions;
  @override
  @JsonKey(name: 'last_taken')
  DateTime? get lastTaken;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'grade')
  num? get grade;

  /// Create a copy of Quiz
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'statement')
  String? get statement => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<Answer>? get answers => throw _privateConstructorUsedError;

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'statement') String? statement,
      @JsonKey(name: 'answers') List<Answer>? answers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? statement = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'statement') String? statement,
      @JsonKey(name: 'answers') List<Answer>? answers});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? statement = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$QuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl with DiagnosticableTreeMixin implements _Question {
  const _$QuestionImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'statement') this.statement,
      @JsonKey(name: 'answers') final List<Answer>? answers})
      : _answers = answers;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'statement')
  final String? statement;
  final List<Answer>? _answers;
  @override
  @JsonKey(name: 'answers')
  List<Answer>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Question(id: $id, type: $type, statement: $statement, answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Question'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('statement', statement))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, statement,
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'statement') final String? statement,
      @JsonKey(name: 'answers') final List<Answer>? answers}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'statement')
  String? get statement;
  @override
  @JsonKey(name: 'answers')
  List<Answer>? get answers;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'statement')
  String? get statement => throw _privateConstructorUsedError;
  @JsonKey(name: 'statement')
  set statement(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isCorrect => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
  set isCorrect(bool? value) => throw _privateConstructorUsedError;
  bool get isUserAnswer => throw _privateConstructorUsedError;
  set isUserAnswer(bool value) => throw _privateConstructorUsedError;

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'statement') String? statement,
      @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isCorrect,
      bool isUserAnswer});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statement = freezed,
    Object? isCorrect = freezed,
    Object? isUserAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUserAnswer: null == isUserAnswer
          ? _value.isUserAnswer
          : isUserAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'statement') String? statement,
      @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isCorrect,
      bool isUserAnswer});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statement = freezed,
    Object? isCorrect = freezed,
    Object? isUserAnswer = null,
  }) {
    return _then(_$AnswerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUserAnswer: null == isUserAnswer
          ? _value.isUserAnswer
          : isUserAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl with DiagnosticableTreeMixin implements _Answer {
  _$AnswerImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'statement') this.statement,
      @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
      this.isCorrect,
      this.isUserAnswer = false});

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int? id;
  @override
  @JsonKey(name: 'statement')
  String? statement;
  @override
  @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? isCorrect;
  @override
  @JsonKey()
  bool isUserAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Answer(id: $id, statement: $statement, isCorrect: $isCorrect, isUserAnswer: $isUserAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Answer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('statement', statement))
      ..add(DiagnosticsProperty('isCorrect', isCorrect))
      ..add(DiagnosticsProperty('isUserAnswer', isUserAnswer));
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  factory _Answer(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'statement') String? statement,
      @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
      bool? isCorrect,
      bool isUserAnswer}) = _$AnswerImpl;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id')
  set id(int? value);
  @override
  @JsonKey(name: 'statement')
  String? get statement;
  @JsonKey(name: 'statement')
  set statement(String? value);
  @override
  @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
  bool? get isCorrect;
  @JsonKey(name: 'is_correct', fromJson: _boolFromJson, toJson: _boolToJson)
  set isCorrect(bool? value);
  @override
  bool get isUserAnswer;
  set isUserAnswer(bool value);

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: 'medium')
  Medium? get medium => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {@JsonKey(name: 'medium') Medium? medium,
      @JsonKey(name: 'notes') String? notes});

  $MediumCopyWith<$Res>? get medium;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Medium?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediumCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $MediumCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'medium') Medium? medium,
      @JsonKey(name: 'notes') String? notes});

  @override
  $MediumCopyWith<$Res>? get medium;
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$VideoImpl(
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Medium?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl with DiagnosticableTreeMixin implements _Video {
  const _$VideoImpl(
      {@JsonKey(name: 'medium') this.medium,
      @JsonKey(name: 'notes') this.notes});

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  @JsonKey(name: 'medium')
  final Medium? medium;
  @override
  @JsonKey(name: 'notes')
  final String? notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Video(medium: $medium, notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Video'))
      ..add(DiagnosticsProperty('medium', medium))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, medium, notes);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {@JsonKey(name: 'medium') final Medium? medium,
      @JsonKey(name: 'notes') final String? notes}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  @JsonKey(name: 'medium')
  Medium? get medium;
  @override
  @JsonKey(name: 'notes')
  String? get notes;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Medium _$MediumFromJson(Map<String, dynamic> json) {
  return _Medium.fromJson(json);
}

/// @nodoc
mixin _$Medium {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'folder_id')
  int? get folderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_id')
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection_id')
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'playback_url')
  String? get playbackUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'length')
  String? get length => throw _privateConstructorUsedError;

  /// Serializes this Medium to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediumCopyWith<Medium> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumCopyWith<$Res> {
  factory $MediumCopyWith(Medium value, $Res Function(Medium) then) =
      _$MediumCopyWithImpl<$Res, Medium>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'folder_id') int? folderId,
      @JsonKey(name: 'video_id') String? videoId,
      @JsonKey(name: 'collection_id') String? collectionId,
      @JsonKey(name: 'playback_url') String? playbackUrl,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'size') String? size,
      @JsonKey(name: 'length') String? length});
}

/// @nodoc
class _$MediumCopyWithImpl<$Res, $Val extends Medium>
    implements $MediumCopyWith<$Res> {
  _$MediumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? folderId = freezed,
    Object? videoId = freezed,
    Object? collectionId = freezed,
    Object? playbackUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? size = freezed,
    Object? length = freezed,
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
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      playbackUrl: freezed == playbackUrl
          ? _value.playbackUrl
          : playbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediumImplCopyWith<$Res> implements $MediumCopyWith<$Res> {
  factory _$$MediumImplCopyWith(
          _$MediumImpl value, $Res Function(_$MediumImpl) then) =
      __$$MediumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'folder_id') int? folderId,
      @JsonKey(name: 'video_id') String? videoId,
      @JsonKey(name: 'collection_id') String? collectionId,
      @JsonKey(name: 'playback_url') String? playbackUrl,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'size') String? size,
      @JsonKey(name: 'length') String? length});
}

/// @nodoc
class __$$MediumImplCopyWithImpl<$Res>
    extends _$MediumCopyWithImpl<$Res, _$MediumImpl>
    implements _$$MediumImplCopyWith<$Res> {
  __$$MediumImplCopyWithImpl(
      _$MediumImpl _value, $Res Function(_$MediumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? folderId = freezed,
    Object? videoId = freezed,
    Object? collectionId = freezed,
    Object? playbackUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? size = freezed,
    Object? length = freezed,
  }) {
    return _then(_$MediumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      playbackUrl: freezed == playbackUrl
          ? _value.playbackUrl
          : playbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediumImpl with DiagnosticableTreeMixin implements _Medium {
  const _$MediumImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'folder_id') this.folderId,
      @JsonKey(name: 'video_id') this.videoId,
      @JsonKey(name: 'collection_id') this.collectionId,
      @JsonKey(name: 'playback_url') this.playbackUrl,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'length') this.length});

  factory _$MediumImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediumImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'folder_id')
  final int? folderId;
  @override
  @JsonKey(name: 'video_id')
  final String? videoId;
  @override
  @JsonKey(name: 'collection_id')
  final String? collectionId;
  @override
  @JsonKey(name: 'playback_url')
  final String? playbackUrl;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'size')
  final String? size;
  @override
  @JsonKey(name: 'length')
  final String? length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Medium(id: $id, name: $name, folderId: $folderId, videoId: $videoId, collectionId: $collectionId, playbackUrl: $playbackUrl, thumbnailUrl: $thumbnailUrl, size: $size, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Medium'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('folderId', folderId))
      ..add(DiagnosticsProperty('videoId', videoId))
      ..add(DiagnosticsProperty('collectionId', collectionId))
      ..add(DiagnosticsProperty('playbackUrl', playbackUrl))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.playbackUrl, playbackUrl) ||
                other.playbackUrl == playbackUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, folderId, videoId,
      collectionId, playbackUrl, thumbnailUrl, size, length);

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediumImplCopyWith<_$MediumImpl> get copyWith =>
      __$$MediumImplCopyWithImpl<_$MediumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediumImplToJson(
      this,
    );
  }
}

abstract class _Medium implements Medium {
  const factory _Medium(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'folder_id') final int? folderId,
      @JsonKey(name: 'video_id') final String? videoId,
      @JsonKey(name: 'collection_id') final String? collectionId,
      @JsonKey(name: 'playback_url') final String? playbackUrl,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'size') final String? size,
      @JsonKey(name: 'length') final String? length}) = _$MediumImpl;

  factory _Medium.fromJson(Map<String, dynamic> json) = _$MediumImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'folder_id')
  int? get folderId;
  @override
  @JsonKey(name: 'video_id')
  String? get videoId;
  @override
  @JsonKey(name: 'collection_id')
  String? get collectionId;
  @override
  @JsonKey(name: 'playback_url')
  String? get playbackUrl;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'size')
  String? get size;
  @override
  @JsonKey(name: 'length')
  String? get length;

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediumImplCopyWith<_$MediumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reading _$ReadingFromJson(Map<String, dynamic> json) {
  return _Reading.fromJson(json);
}

/// @nodoc
mixin _$Reading {
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this Reading to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingCopyWith<Reading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingCopyWith<$Res> {
  factory $ReadingCopyWith(Reading value, $Res Function(Reading) then) =
      _$ReadingCopyWithImpl<$Res, Reading>;
  @useResult
  $Res call({@JsonKey(name: 'content') String? content});
}

/// @nodoc
class _$ReadingCopyWithImpl<$Res, $Val extends Reading>
    implements $ReadingCopyWith<$Res> {
  _$ReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reading
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingImplCopyWith<$Res> implements $ReadingCopyWith<$Res> {
  factory _$$ReadingImplCopyWith(
          _$ReadingImpl value, $Res Function(_$ReadingImpl) then) =
      __$$ReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String? content});
}

/// @nodoc
class __$$ReadingImplCopyWithImpl<$Res>
    extends _$ReadingCopyWithImpl<$Res, _$ReadingImpl>
    implements _$$ReadingImplCopyWith<$Res> {
  __$$ReadingImplCopyWithImpl(
      _$ReadingImpl _value, $Res Function(_$ReadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reading
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$ReadingImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingImpl with DiagnosticableTreeMixin implements _Reading {
  const _$ReadingImpl({@JsonKey(name: 'content') this.content});

  factory _$ReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String? content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reading(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reading'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of Reading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingImplCopyWith<_$ReadingImpl> get copyWith =>
      __$$ReadingImplCopyWithImpl<_$ReadingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingImplToJson(
      this,
    );
  }
}

abstract class _Reading implements Reading {
  const factory _Reading({@JsonKey(name: 'content') final String? content}) =
      _$ReadingImpl;

  factory _Reading.fromJson(Map<String, dynamic> json) = _$ReadingImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String? get content;

  /// Create a copy of Reading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingImplCopyWith<_$ReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
