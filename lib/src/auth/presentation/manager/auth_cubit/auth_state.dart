part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.save() = _LoginSave;

  const factory AuthState.loginLoading() = _LoginLoading;
  const factory AuthState.loginFailure(NetworkExceptions? networkException) =
      _LoginFailure;
  const factory AuthState.loginSuccess(UserModel data, String? message) =
      _LoginSuccess;

  const factory AuthState.registerLoading() = _RegisterLoading;
  const factory AuthState.registerFailure(NetworkExceptions? networkException) =
      _RegisterFailure;
  const factory AuthState.registerSuccess(UserModel data, String? message) =
      _RegisterSuccess;

  const factory AuthState.logoutLoading() = _LogoutLoading;
  const factory AuthState.logoutFailure(NetworkExceptions? networkException) =
      _LogoutFailure;
  const factory AuthState.logoutSuccess(String? message) = _LogoutSuccess;
}
