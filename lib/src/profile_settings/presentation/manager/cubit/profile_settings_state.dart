part of 'profile_settings_cubit.dart';

@freezed
class ProfileSettingsState with _$ProfileSettingsState {
  const factory ProfileSettingsState.initial() = _Initial;
  // const factory ProfileSettingsState.failure() = _Failure;
  const factory ProfileSettingsState.updateInformationStudentLoading() = UpdateInformationStudentLoading;
  const factory ProfileSettingsState.updateInformationStudentfailure(NetworkExceptions? networkException) =
      UpdateInformationStudentFailure;
  const factory ProfileSettingsState.updateInformationStudentsuccess(
      StudentInfomationsModel data, String? message) = UpdateInformationStudentSuccess;

  const factory ProfileSettingsState.fetchTransactionsLoading() =
      FetchTransactionsLoading;
  const factory ProfileSettingsState.fetchTransactionsFailure(
      NetworkExceptions? networkException) = FetchTransactionsFailure;
  const factory ProfileSettingsState.fetchTransactionsSuccess(
      List<TransactionModel> data, String? message) = FetchTransactionsSuccess;

  const factory ProfileSettingsState.fetchReceiptLoading() =
      FetchReceiptLoading;
  const factory ProfileSettingsState.fetchReceiptFailure(
      NetworkExceptions? networkException) = FetchReceiptFailure;
  const factory ProfileSettingsState.fetchReceiptSuccess(
      List<ReceiptModel> data, String? message) = FetchReceiptSuccess;
}
