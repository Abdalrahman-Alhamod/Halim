import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_loading_dialog.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../shared/model/user_model.dart';
import '../../../domain/repos/auth_repo.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(const AuthState.initial());
  final AuthRepo _authRepo;
  UserModel? user;

  Future<void> login({
    required String email,
    required String password,
    required bool rememeberMe,
  }) async {
    emit(const AuthState.loginLoading());
    final response = await _authRepo.login(
      email: email,
      password: password,
    );
    response.when(
      success: (data) {
        user = data.data;
        emit(
          AuthState.loginSuccess(user!, data.message),
        );
        _authRepo.saveToken(user!);
        if (rememeberMe) {
          _authRepo.saveUserEmail(user!);
        }
        emit(
          const AuthState.save(),
        );
      },
      failure: (networkException) {
        emit(
          AuthState.loginFailure(networkException),
        );
      },
    );
  }

  Future<void> register({
    required String email,
    required String password,
    required bool rememeberMe,
  }) async {
    emit(const AuthState.registerLoading());
    final response = await _authRepo.register(
      email: email,
      password: password,
    );
    response.when(
      success: (data) {
        user = data.data;
        emit(
          AuthState.registerSuccess(user!, data.message),
        );
        if (rememeberMe) {
          _authRepo.saveUserEmail(user!);
        }
        emit(
          const AuthState.save(),
        );
      },
      failure: (networkException) {
        emit(
          AuthState.registerFailure(networkException),
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

  bool listenLoginWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loginLoading: () => true,
      loginSuccess: (_, __) => true,
      loginFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenLogin(BuildContext context, AuthState state) {
    const title = 'Login';
    state.maybeWhen(
      loginLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      loginFailure: (NetworkExceptions? networkException) {
        context.pop();

        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      loginSuccess: (data, message) {
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

  Future<void> logout() async {
    emit(const AuthState.logoutLoading());
    final response = await _authRepo.logout();
    response.when(
      success: (data) {
        emit(
          AuthState.logoutSuccess(data.message),
        );
        _authRepo.deleteToken();
      },
      failure: (networkException) {
        emit(
          AuthState.logoutFailure(networkException),
        );
      },
    );
  }

  bool listenLogoutWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      logoutLoading: () => true,
      logoutSuccess: (_) => true,
      logoutFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenLogout(BuildContext context, AuthState state) {
    const title = 'Logout';
    state.maybeWhen(
      logoutLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      logoutFailure: (NetworkExceptions? networkException) {
        context.pop();

        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      logoutSuccess: (message) {
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

  bool listenRegisterWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      registerLoading: () => true,
      registerSuccess: (_, __) => true,
      registerFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenRegister(BuildContext context, AuthState state) {
    const title = 'Register';
    state.maybeWhen(
      registerLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      registerFailure: (NetworkExceptions? networkException) {
        context.pop();

        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      registerSuccess: (data, message) {
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
        GoRouter.of(context).go(AppRoute.kFillProfile);
      },
      orElse: () {},
    );
  }
}
