part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.loading() = _Loading;
  const factory LogoutState.failure(NetworkExceptions? networkException) =
      _Failure;
  const factory LogoutState.success() = _Success;
}
