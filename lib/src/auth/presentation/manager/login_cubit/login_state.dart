part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.save() = _Save;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.failure(NetworkExceptions? networkException) =
      _Failure;
  const factory LoginState.success(UserEntity data, String? message) = _Success;
}
