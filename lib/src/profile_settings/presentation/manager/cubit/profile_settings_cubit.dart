// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/core/domain/error_handler/network_exceptions.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/core/widgets/toast_widget.dart';
import 'package:halim/src/profile_settings/data/models/transaction_model.dart';
import 'package:halim/src/profile_settings/domain/repos/profile_settings_repo.dart';

part 'profile_settings_state.dart';
part 'profile_settings_cubit.freezed.dart';

class ProfileSettingsCubit extends Cubit<ProfileSettingsState> {
  ProfileSettingsCubit(this._profileSettingsRepo)
      : super(const ProfileSettingsState.initial());

  final ProfileSettingsRepo _profileSettingsRepo;
  List<TransactionModel> transactions = [];

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

  bool buildTransactionWhen(
      ProfileSettingsState previous, ProfileSettingsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchTransactionsLoading: () => true,
      fetchTransactionsFailure: (_) => true,
      fetchTransactionsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildtransactions({
    required BuildContext context,
    required ProfileSettingsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchTransactionsLoading: () {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const ShimmerBox(
            height: 32,
            width: 120,
          ),
        );
      },
      fetchTransactionsSuccess: (transaction, message) => child,
      fetchTransactionsFailure: (message) =>
          const ToastWidget(title: 'networkExceptions'),
      orElse: () => const SizedBox(),
    );
  }
}
