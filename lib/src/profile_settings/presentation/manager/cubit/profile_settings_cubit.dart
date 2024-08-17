// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/core/domain/error_handler/network_exceptions.dart';
import 'package:halim/src/profile_settings/data/models/transaction_model.dart';
import 'package:halim/src/profile_settings/domain/repos/profile_settings_repo.dart';

import '../../../../account_setup/data/models/student_infomations_model.dart';
import '../../../data/models/receipt_model.dart';

part 'profile_settings_state.dart';
part 'profile_settings_cubit.freezed.dart';

class ProfileSettingsCubit extends Cubit<ProfileSettingsState> {
  ProfileSettingsCubit(this._profileSettingsRepo)
      : super(const ProfileSettingsState.initial());

  final ProfileSettingsRepo _profileSettingsRepo;
  List<TransactionModel> transactions = [];
  List<ReceiptModel> receipt = [];

  Future<void> getTransactions() async {
    emit(
      const ProfileSettingsState.fetchTransactionsLoading(),
    );
    final response = await _profileSettingsRepo.getTransactions();
    response.when(
      success: (data) {
        transactions = List<TransactionModel>.from(data.data.list);
        // transactions.insert(0, getCategoryAll());
        emit(
          ProfileSettingsState.fetchTransactionsSuccess(
            transactions,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          ProfileSettingsState.fetchTransactionsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  Future<void> getReceipt() async {
    emit(
      const ProfileSettingsState.fetchReceiptLoading(),
    );
    final response = await _profileSettingsRepo.getReceipt();
    response.when(
      success: (data) {
        receipt = List<ReceiptModel>.from(data.data.list);
        // transactions.insert(0, getCategoryAll());
        emit(
          ProfileSettingsState.fetchReceiptSuccess(
            receipt,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          ProfileSettingsState.fetchReceiptFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  StudentInfomationsModel upStudent = StudentInfomationsModel();

  Future<void> updateInformationStudent() async {
    final response =
        await _profileSettingsRepo.updateInformationStudent(upStudent);

    response.when(
      success: (data) {
        upStudent = data.data;
        emit(
          ProfileSettingsState.updateInformationStudentsuccess(
              upStudent, data.message),
        );
      },
      failure: (networkException) {
        emit(
          ProfileSettingsState.updateInformationStudentfailure(
              networkException),
        );
      },
    );
  }
}
