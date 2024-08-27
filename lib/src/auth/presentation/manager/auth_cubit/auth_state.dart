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

  const factory AuthState.signInWithGoogleLoading() = _SignInWithGoogleLoading;
  const factory AuthState.signInWithGoogleFailure(
    NetworkExceptions? networkException,
  ) = _SignInWithGoogleFailure;
  const factory AuthState.signInWithGoogleSuccessLogin(
    UserModel data,
    String? message,
  ) = _SignInWithGoogleSuccessLogin;
  const factory AuthState.signInWithGoogleSuccessRegister(
    UserModel data,
    String? message,
  ) = _SignInWithGoogleSuccessRegister;

  const factory AuthState.sendVerificationCodeLoading() =
      _SendVerificationLoading;
  const factory AuthState.sendVerificationCodeFailure(
      NetworkExceptions? networkException) = _SendVerificationFailure;
  const factory AuthState.sendVerificationCodeSuccess(String? message) =
      _SendVerificationSuccess;

  const factory AuthState.confirmEmailLoading() = _ConfirmEmailLoading;
  const factory AuthState.confirmEmailFailure(
      NetworkExceptions? networkException) = _ConfirmEmailFailure;
  const factory AuthState.confirmEmailSuccess(UserModel data, String? message) =
      _ConfirmEmailSuccess;

  const factory AuthState.resetPasswordLoading() = _ResetPasswordLoading;
  const factory AuthState.resetPasswordFailure(
      NetworkExceptions? networkException) = _ResetPasswordFailure;
  const factory AuthState.resetPasswordSuccess(UserModel data,String? message) =
      _ResetPasswordSuccess;

  const factory AuthState.registerFCMLoading() = _RegisterFCMLoading;
  const factory AuthState.registerFCMFailure(
      NetworkExceptions? networkException) = _RegisterFCMFailure;
  const factory AuthState.registerFCMSuccess(String? message) =
      _RegisterFCMSuccess;
}
