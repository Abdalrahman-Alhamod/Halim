import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_loading_dialog.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/logger.dart';
import '../../../data/models/student_infomations_model.dart';
import '../../../domain/repos/account_setup_repo.dart';
import '../../../../auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../../../shared/model/user_model.dart';

import '../../../../../core/functions/show_custom_dialog.dart';
import '../../../../forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';
part 'account_setup_state.dart';
part 'account_setup_cubit.freezed.dart';

class AccountSetupCubit extends Cubit<AccountSetupState> {
  AccountSetupCubit(this._accountSetupRepo)
      : super(const AccountSetupState.initial());
  final AccountSetupRepo _accountSetupRepo;

  StudentInfomationsModel student = StudentInfomationsModel();
  
  int pin = 0;
  // List<int>? sinterests = [];
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
      success: (data, message) {
        context.pop();
        context.read<AuthCubit>().user = UserModel(
          id: data.id,
          firstName: data.firstName,
          lastName: data.lastName,
          email: data.email,
          pin: data.pin,
          gender: data.gender,
          birthDate: data.birthDate,
          image: data.image,
          phoneNumber: data.phoneNumber,
          educationLevel: data.educationLevel,
          major: data.major,
          interests: data.interests,
          pointsBalance: data.pointsBalance,
          accessToken: data.accessToken,
        );
        context.read<AuthCubit>().saveUser();

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
        showCustomDialog(
          context: context,
          widget: AccontSucssesDialog(
            () {
              GoRouter.of(context).go(AppRoute.kHome);
            },
          ),
        );
      },
      orElse: () {},
    );
  }
}
