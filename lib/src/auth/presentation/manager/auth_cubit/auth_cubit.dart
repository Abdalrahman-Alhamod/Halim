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
  void saveUser() {
    _authRepo.saveToken(user!);
  }

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
        saveUser();
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

  Future<void> signInWithGoogle() async {
    emit(const AuthState.signInWithGoogleLoading());
    final response = await _authRepo.signInWithGoogle();
    response.when(
      success: (data) {
        user = data.data;
        if (user!.accessToken != null) {
          emit(
            AuthState.signInWithGoogleSuccessLogin(user!, data.message),
          );
          saveUser();
          emit(
            const AuthState.save(),
          );
        } else {
          emit(
            AuthState.signInWithGoogleSuccessRegister(user!, data.message),
          );
        }
      },
      failure: (networkException) {
        emit(
          AuthState.signInWithGoogleFailure(networkException),
        );
      },
    );
  }

  bool listenSignInWithGoogleWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      signInWithGoogleLoading: () => true,
      signInWithGoogleSuccessLogin: (_, __) => true,
      signInWithGoogleSuccessRegister: (_, __) => true,
      signInWithGoogleFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenSignInWithGoogle(BuildContext context, AuthState state) {
    const title = 'Sign in with google';
    state.maybeWhen(
      signInWithGoogleLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      signInWithGoogleFailure: (NetworkExceptions? networkException) {
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
      signInWithGoogleSuccessLogin: (data, message) {
        context.pop();

        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Success Login',
        );
        GoRouter.of(context).go(AppRoute.kHome);
      },
      signInWithGoogleSuccessRegister: (data, message) {
        context.pop();

        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Success Register',
        );
        GoRouter.of(context).go(AppRoute.kFillProfile);
      },
      orElse: () {},
    );
  }

  Future<void> sendVerificationCode({
    required String email,
  }) async {
    emit(const AuthState.sendVerificationCodeLoading());
    final response = await _authRepo.sendVerificationCode(
      email: email,
    );
    response.when(
      success: (data) {
        emit(
          AuthState.sendVerificationCodeSuccess(data.message),
        );
      },
      failure: (networkException) {
        emit(
          AuthState.sendVerificationCodeFailure(networkException),
        );
      },
    );
  }

  bool listenSendVerificationCodeWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      sendVerificationCodeLoading: () => true,
      sendVerificationCodeSuccess: (_) => true,
      sendVerificationCodeFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenSendVerificationCode(BuildContext context, AuthState state) {
    const title = 'Send Verification Code';
    state.maybeWhen(
      sendVerificationCodeLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      sendVerificationCodeFailure: (NetworkExceptions? networkException) {
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
      sendVerificationCodeSuccess: (message) {
        context.pop();

        logger.print(
          "Verification code sent successfully",
          color: PrintColor.pink,
          title: '$title Success',
        );

        GoRouter.of(context).go(AppRoute.kEnterCode);
      },
      orElse: () {},
    );
  }

  Future<void> confirmEmail({
    required String code,
  }) async {
    emit(const AuthState.confirmEmailLoading());
    final response = await _authRepo.confirmEmail(
      code: code,
    );
    response.when(
      success: (data) {
        user = data.data;
        emit(
          AuthState.confirmEmailSuccess(user!, data.message),
        );
      },
      failure: (networkException) {
        emit(
          AuthState.confirmEmailFailure(networkException),
        );
      },
    );
  }

  bool listenConfirmEmailWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      confirmEmailLoading: () => true,
      confirmEmailFailure: (_) => true,
      confirmEmailSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenConfirmEmail(
    BuildContext context,
    AuthState state,
    String successRoute,
  ) {
    const title = 'Confirm Email';
    state.maybeWhen(
      confirmEmailLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      confirmEmailFailure: (NetworkExceptions? networkException) {
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
      confirmEmailSuccess: (data, message) {
        context.pop();

        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Success',
        );

        GoRouter.of(context).go(successRoute);
      },
      orElse: () {},
    );
  }

  Future<void> resetPassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    emit(const AuthState.resetPasswordLoading());
    final response = await _authRepo.resetPassword(
      id: user?.id ?? 0,
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
    response.when(
      success: (data) {
        user = data.data;
        emit(
          AuthState.resetPasswordSuccess(user!, data.message),
        );
        saveUser();
        emit(
          const AuthState.save(),
        );
      },
      failure: (networkException) {
        emit(
          AuthState.resetPasswordFailure(networkException),
        );
      },
    );
  }

  bool listenResetPasswordWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      resetPasswordLoading: () => true,
      resetPasswordFailure: (_) => true,
      resetPasswordSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenResetPassword(
    BuildContext context,
    AuthState state,
  ) {
    const title = 'Reset Password';
    state.maybeWhen(
      resetPasswordLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      resetPasswordFailure: (NetworkExceptions? networkException) {
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
      resetPasswordSuccess: (data, message) {
        context.pop();

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

  Future<void> registerFCM({
    required String fcmToken,
  }) async {
    emit(const AuthState.registerFCMLoading());
    final response = await _authRepo.registerFCM(
      fcmToken: fcmToken,
    );
    response.when(
      success: (data) {
        emit(
          AuthState.registerFCMSuccess(data.message),
        );
      },
      failure: (networkException) {
        emit(
          AuthState.registerFCMFailure(networkException),
        );
      },
    );
  }

  bool listenRegisterFCMWhen(AuthState previous, AuthState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      registerFCMLoading: () => true,
      registerFCMFailure: (_) => true,
      registerFCMSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenRegisterFCM(
    BuildContext context,
    AuthState state,
    String successRoute,
  ) {
    const title = 'Register FCM';
    state.maybeWhen(
      registerFCMLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      registerFCMFailure: (NetworkExceptions? networkException) {
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
      registerFCMSuccess: (message) {
        context.pop();

        logger.print(
          "FCM registered successfully",
          color: PrintColor.pink,
          title: '$title Success',
        );

        GoRouter.of(context).go(successRoute);
      },
      orElse: () {},
    );
  }
}
