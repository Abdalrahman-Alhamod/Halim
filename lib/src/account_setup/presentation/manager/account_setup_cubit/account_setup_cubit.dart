import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/domain/error_handler/network_exceptions.dart';
import 'package:halim/core/functions/show_loading_dialog.dart';
import 'package:halim/core/functions/show_toast.dart';
import 'package:halim/core/functions/toast_status.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/logger.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/account_setup/domain/repos/account_setup_repo.dart';
part 'account_setup_state.dart';
part 'account_setup_cubit.freezed.dart';

class AccountSetupCubit extends Cubit<AccountSetupState> {
  AccountSetupCubit(this._accountSetupRepo)
      : super(const AccountSetupState.initial());
  final AccountSetupRepo _accountSetupRepo;

  StudentInfomationsModel student = StudentInfomationsModel();
  int pin=0;
  Future<void> postInformationStudent() async {
    emit(const AccountSetupState.loading());
    final response = await _accountSetupRepo.postInformationStudent(student);

    response.when(
      success: (data) {
        student = data.data;
        emit(
          AccountSetupState.success(student, data.message),
        );
      },
      failure: (networkException) {
        emit(
          AccountSetupState.failure(networkException),
        );
      },
    );
  }

  bool listenWhen(AccountSetupState previous, AccountSetupState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      success: (_, __) => true,
      failure: (_) => true,
      orElse: () => false,
    );
  }

  listen(BuildContext context, AccountSetupState state) {
    const title = 'AccountSetup';
    state.maybeWhen(
      loading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failure: (NetworkExceptions? networkException) {
        context.pop();

        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      success: (data, message) {
        context.pop();

        showTOAST(
          context,
          textToast: message,
          title: '$title Success',
          status: ToastStatus.success,
        );

        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Success',
        );
        GoRouter.of(context).go(AppRoute.kHome);
      },
      orElse: () {},
    );
  }
}
