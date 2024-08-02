part of 'account_setup_cubit.dart';

@freezed
class AccountSetupState with _$AccountSetupState {
  const factory AccountSetupState.initial() = _Initial;
  const factory AccountSetupState.loading() = _Loading;
  const factory AccountSetupState.failure(
    NetworkExceptions? networkException) =
      _Failure;
  const factory AccountSetupState.success(StudentInfomationsModel data, String? message) = _Success;
}
