// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginSaveImplCopyWith<$Res> {
  factory _$$LoginSaveImplCopyWith(
          _$LoginSaveImpl value, $Res Function(_$LoginSaveImpl) then) =
      __$$LoginSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSaveImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSaveImpl>
    implements _$$LoginSaveImplCopyWith<$Res> {
  __$$LoginSaveImplCopyWithImpl(
      _$LoginSaveImpl _value, $Res Function(_$LoginSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSaveImpl implements _LoginSave {
  const _$LoginSaveImpl();

  @override
  String toString() {
    return 'AuthState.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _LoginSave implements AuthState {
  const factory _LoginSave() = _$LoginSaveImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements _LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements AuthState {
  const factory _LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$LoginFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$LoginFailureImpl implements _LoginFailure {
  const _$LoginFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'AuthState.loginFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return loginFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return loginFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements AuthState {
  const factory _LoginFailure(final NetworkExceptions? networkException) =
      _$LoginFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel data, String? message});

  $UserModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$LoginSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get data {
    return $UserModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl(this.data, this.message);

  @override
  final UserModel data;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.loginSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return loginSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return loginSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess(final UserModel data, final String? message) =
      _$LoginSuccessImpl;

  UserModel get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl value,
          $Res Function(_$RegisterLoadingImpl) then) =
      __$$RegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterLoadingImpl>
    implements _$$RegisterLoadingImplCopyWith<$Res> {
  __$$RegisterLoadingImplCopyWithImpl(
      _$RegisterLoadingImpl _value, $Res Function(_$RegisterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoadingImpl implements _RegisterLoading {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'AuthState.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoading implements AuthState {
  const factory _RegisterLoading() = _$RegisterLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterFailureImplCopyWith<$Res> {
  factory _$$RegisterFailureImplCopyWith(_$RegisterFailureImpl value,
          $Res Function(_$RegisterFailureImpl) then) =
      __$$RegisterFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$RegisterFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterFailureImpl>
    implements _$$RegisterFailureImplCopyWith<$Res> {
  __$$RegisterFailureImplCopyWithImpl(
      _$RegisterFailureImpl _value, $Res Function(_$RegisterFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$RegisterFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$RegisterFailureImpl implements _RegisterFailure {
  const _$RegisterFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'AuthState.registerFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFailureImplCopyWith<_$RegisterFailureImpl> get copyWith =>
      __$$RegisterFailureImplCopyWithImpl<_$RegisterFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return registerFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return registerFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (registerFailure != null) {
      return registerFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return registerFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return registerFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (registerFailure != null) {
      return registerFailure(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailure implements AuthState {
  const factory _RegisterFailure(final NetworkExceptions? networkException) =
      _$RegisterFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$RegisterFailureImplCopyWith<_$RegisterFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel data, String? message});

  $UserModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$RegisterSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get data {
    return $UserModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$RegisterSuccessImpl implements _RegisterSuccess {
  const _$RegisterSuccessImpl(this.data, this.message);

  @override
  final UserModel data;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.registerSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<_$RegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return registerSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return registerSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements AuthState {
  const factory _RegisterSuccess(final UserModel data, final String? message) =
      _$RegisterSuccessImpl;

  UserModel get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutLoadingImplCopyWith<$Res> {
  factory _$$LogoutLoadingImplCopyWith(
          _$LogoutLoadingImpl value, $Res Function(_$LogoutLoadingImpl) then) =
      __$$LogoutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutLoadingImpl>
    implements _$$LogoutLoadingImplCopyWith<$Res> {
  __$$LogoutLoadingImplCopyWithImpl(
      _$LogoutLoadingImpl _value, $Res Function(_$LogoutLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutLoadingImpl implements _LogoutLoading {
  const _$LogoutLoadingImpl();

  @override
  String toString() {
    return 'AuthState.logoutLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return logoutLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return logoutLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutLoading != null) {
      return logoutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return logoutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return logoutLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutLoading != null) {
      return logoutLoading(this);
    }
    return orElse();
  }
}

abstract class _LogoutLoading implements AuthState {
  const factory _LogoutLoading() = _$LogoutLoadingImpl;
}

/// @nodoc
abstract class _$$LogoutFailureImplCopyWith<$Res> {
  factory _$$LogoutFailureImplCopyWith(
          _$LogoutFailureImpl value, $Res Function(_$LogoutFailureImpl) then) =
      __$$LogoutFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$LogoutFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutFailureImpl>
    implements _$$LogoutFailureImplCopyWith<$Res> {
  __$$LogoutFailureImplCopyWithImpl(
      _$LogoutFailureImpl _value, $Res Function(_$LogoutFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$LogoutFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$LogoutFailureImpl implements _LogoutFailure {
  const _$LogoutFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'AuthState.logoutFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFailureImplCopyWith<_$LogoutFailureImpl> get copyWith =>
      __$$LogoutFailureImplCopyWithImpl<_$LogoutFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return logoutFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return logoutFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return logoutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return logoutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailure implements AuthState {
  const factory _LogoutFailure(final NetworkExceptions? networkException) =
      _$LogoutFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$LogoutFailureImplCopyWith<_$LogoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
          _$LogoutSuccessImpl value, $Res Function(_$LogoutSuccessImpl) then) =
      __$$LogoutSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
      _$LogoutSuccessImpl _value, $Res Function(_$LogoutSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LogoutSuccessImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LogoutSuccessImpl implements _LogoutSuccess {
  const _$LogoutSuccessImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.logoutSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutSuccessImplCopyWith<_$LogoutSuccessImpl> get copyWith =>
      __$$LogoutSuccessImplCopyWithImpl<_$LogoutSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() save,
    required TResult Function() loginLoading,
    required TResult Function(NetworkExceptions? networkException) loginFailure,
    required TResult Function(UserModel data, String? message) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(NetworkExceptions? networkException)
        registerFailure,
    required TResult Function(UserModel data, String? message) registerSuccess,
    required TResult Function() logoutLoading,
    required TResult Function(NetworkExceptions? networkException)
        logoutFailure,
    required TResult Function(String? message) logoutSuccess,
  }) {
    return logoutSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? save,
    TResult? Function()? loginLoading,
    TResult? Function(NetworkExceptions? networkException)? loginFailure,
    TResult? Function(UserModel data, String? message)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(NetworkExceptions? networkException)? registerFailure,
    TResult? Function(UserModel data, String? message)? registerSuccess,
    TResult? Function()? logoutLoading,
    TResult? Function(NetworkExceptions? networkException)? logoutFailure,
    TResult? Function(String? message)? logoutSuccess,
  }) {
    return logoutSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? save,
    TResult Function()? loginLoading,
    TResult Function(NetworkExceptions? networkException)? loginFailure,
    TResult Function(UserModel data, String? message)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(NetworkExceptions? networkException)? registerFailure,
    TResult Function(UserModel data, String? message)? registerSuccess,
    TResult Function()? logoutLoading,
    TResult Function(NetworkExceptions? networkException)? logoutFailure,
    TResult Function(String? message)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSave value) save,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailure value) registerFailure,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_LogoutFailure value) logoutFailure,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSave value)? save,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailure value)? registerFailure,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_LogoutFailure value)? logoutFailure,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSave value)? save,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailure value)? registerFailure,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_LogoutFailure value)? logoutFailure,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccess implements AuthState {
  const factory _LogoutSuccess(final String? message) = _$LogoutSuccessImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$LogoutSuccessImplCopyWith<_$LogoutSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
