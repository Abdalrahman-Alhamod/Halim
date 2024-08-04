// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizResult {
  int get totalQuestions => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  int get wrongAnswers => throw _privateConstructorUsedError;
  num get grade => throw _privateConstructorUsedError;
  QuizStatus get quizStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizResultCopyWith<QuizResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultCopyWith<$Res> {
  factory $QuizResultCopyWith(
          QuizResult value, $Res Function(QuizResult) then) =
      _$QuizResultCopyWithImpl<$Res, QuizResult>;
  @useResult
  $Res call(
      {int totalQuestions,
      int correctAnswers,
      int wrongAnswers,
      num grade,
      QuizStatus quizStatus});
}

/// @nodoc
class _$QuizResultCopyWithImpl<$Res, $Val extends QuizResult>
    implements $QuizResultCopyWith<$Res> {
  _$QuizResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
    Object? grade = null,
    Object? quizStatus = null,
  }) {
    return _then(_value.copyWith(
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      wrongAnswers: null == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as num,
      quizStatus: null == quizStatus
          ? _value.quizStatus
          : quizStatus // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResultImplCopyWith<$Res>
    implements $QuizResultCopyWith<$Res> {
  factory _$$QuizResultImplCopyWith(
          _$QuizResultImpl value, $Res Function(_$QuizResultImpl) then) =
      __$$QuizResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalQuestions,
      int correctAnswers,
      int wrongAnswers,
      num grade,
      QuizStatus quizStatus});
}

/// @nodoc
class __$$QuizResultImplCopyWithImpl<$Res>
    extends _$QuizResultCopyWithImpl<$Res, _$QuizResultImpl>
    implements _$$QuizResultImplCopyWith<$Res> {
  __$$QuizResultImplCopyWithImpl(
      _$QuizResultImpl _value, $Res Function(_$QuizResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
    Object? grade = null,
    Object? quizStatus = null,
  }) {
    return _then(_$QuizResultImpl(
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      wrongAnswers: null == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as num,
      quizStatus: null == quizStatus
          ? _value.quizStatus
          : quizStatus // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ));
  }
}

/// @nodoc

class _$QuizResultImpl with DiagnosticableTreeMixin implements _QuizResult {
  const _$QuizResultImpl(
      {required this.totalQuestions,
      required this.correctAnswers,
      required this.wrongAnswers,
      required this.grade,
      required this.quizStatus});

  @override
  final int totalQuestions;
  @override
  final int correctAnswers;
  @override
  final int wrongAnswers;
  @override
  final num grade;
  @override
  final QuizStatus quizStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizResult(totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers, grade: $grade, quizStatus: $quizStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizResult'))
      ..add(DiagnosticsProperty('totalQuestions', totalQuestions))
      ..add(DiagnosticsProperty('correctAnswers', correctAnswers))
      ..add(DiagnosticsProperty('wrongAnswers', wrongAnswers))
      ..add(DiagnosticsProperty('grade', grade))
      ..add(DiagnosticsProperty('quizStatus', quizStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResultImpl &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.wrongAnswers, wrongAnswers) ||
                other.wrongAnswers == wrongAnswers) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.quizStatus, quizStatus) ||
                other.quizStatus == quizStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalQuestions, correctAnswers,
      wrongAnswers, grade, quizStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResultImplCopyWith<_$QuizResultImpl> get copyWith =>
      __$$QuizResultImplCopyWithImpl<_$QuizResultImpl>(this, _$identity);
}

abstract class _QuizResult implements QuizResult {
  const factory _QuizResult(
      {required final int totalQuestions,
      required final int correctAnswers,
      required final int wrongAnswers,
      required final num grade,
      required final QuizStatus quizStatus}) = _$QuizResultImpl;

  @override
  int get totalQuestions;
  @override
  int get correctAnswers;
  @override
  int get wrongAnswers;
  @override
  num get grade;
  @override
  QuizStatus get quizStatus;
  @override
  @JsonKey(ignore: true)
  _$$QuizResultImplCopyWith<_$QuizResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
