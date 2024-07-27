import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_loading_dialog.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/logger.dart';
import '../../../domain/repos/auth_repo.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this._authRepo) : super(const LogoutState.initial());
  final AuthRepo _authRepo;

  Future<void> logout() async {
    emit(const LogoutState.loading());
    final response = await _authRepo.logout();
    response.when(
      success: (data) {
        emit(
          LogoutState.success(data.message),
        );
        _authRepo.deleteToken();
      },
      failure: (networkException) {
        emit(
          LogoutState.failure(networkException),
        );
      },
    );
  }

  bool listenWhen(LogoutState previous, LogoutState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      success: (message) => true,
      failure: (_) => true,
      orElse: () => false,
    );
  }

  listen(BuildContext context, LogoutState state) {
    const title = 'Logout';
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
      success: (message) {
        context.pop();

        showTOAST(
          context,
          title: 'Logged out successfully',
          status: ToastStatus.success,
        );

        logger.print(
          'Logged out!',
          color: PrintColor.pink,
          title: '$title Success',
        );
        GoRouter.of(context).go(AppRoute.kLoginWithView);
      },
      orElse: () {},
    );
  }
}
