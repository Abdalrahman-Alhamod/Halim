part of 'profile_settings_cubit.dart';

@freezed
class ProfileSettingsState with _$ProfileSettingsState {
  const factory ProfileSettingsState.initial() = _Initial;
  // const factory ProfileSettingsState.failure() = _Failure;

  const factory ProfileSettingsState.fetchTransactionsLoading() =
      _FetchTransactionsLoading;
  const factory ProfileSettingsState.fetchTransactionsFailure(
      NetworkExceptions? networkException) = _FetchTransactionsFailure;
  const factory ProfileSettingsState.fetchTransactionsSuccess(
      List<TransactionModel> data, String? message) = _FetchTransactionsSuccess;
}
