// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/core/domain/error_handler/network_exceptions.dart';
import 'package:halim/src/account_setup/data/data_sources/account_setup_local_data_source.dart';
import 'package:halim/src/account_setup/data/data_sources/account_setup_remote_data_source.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/account_setup/domain/repos/account_setup_repo.dart';

class AccountSetupImpl extends AccountSetupRepo {
  final AccountSetupRemoteDataSource _accountSetupRemoteDataSource;
  final AccountSetupLocalDataSource _accountSetupLocalDataSource;
  AccountSetupImpl(
    this._accountSetupLocalDataSource,
    this._accountSetupRemoteDataSource,
  );
  @override
  Future<ApiResponse<BaseModel>> postInformationStudent(
      StudentInfomationsModel student) async {
    try {
      final response =
          await _accountSetupRemoteDataSource.postInformationStudent(student);
      return ApiResponse.success(
        response,
      );
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(
          error,
        ),
      );
    }
  }
}
