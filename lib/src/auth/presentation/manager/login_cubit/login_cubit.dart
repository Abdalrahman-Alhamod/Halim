import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/functions/show_loading_dialog.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/src/auth/domain/repos/auth_repo.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../shared/model/user_model.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(const LoginState.initial());
  final AuthRepo _authRepo;
  UserModel? _user;

  void _saveUser(bool rememeberMe) {
    emit(const LoginState.save());
    _authRepo.saveToken(_user!);
    if (rememeberMe) {
      _authRepo.saveUserEmail(_user!);
    }
  }

  Future<void> login({
    required String email,
    required String password,
    required bool rememeberMe,
  }) async {
    emit(const LoginState.loading());
    final response = await _authRepo.login(
      email: email,
      password: password,
    );
    response.when(
      success: (data) {
        _user = data.data;
        emit(
          LoginState.success(_user!, data.message),
        );
        _saveUser(rememeberMe);
      },
      failure: (networkException) {
        emit(
          LoginState.failure(networkException),
        );
      },
    );
  }

  String? getUserEmail() {
    return _authRepo.getUserEmail();
  }

  bool isUserLoggedIn() {
    return _authRepo.isUserLoggedIn();
  }

  bool listenWhen(LoginState previous, LoginState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      success: (_, __) => true,
      failure: (_) => true,
      orElse: () => false,
    );
  }

  listen(BuildContext context, LoginState state) {
    const title = 'Login';
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
