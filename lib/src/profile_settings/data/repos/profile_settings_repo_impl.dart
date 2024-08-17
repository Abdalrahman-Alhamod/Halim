// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/core/domain/error_handler/network_exceptions.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/profile_settings/data/data_sources/profile_settings_local_data_source.dart';
import 'package:halim/src/profile_settings/data/data_sources/profile_settings_remote_data_source.dart';
import 'package:halim/src/profile_settings/domain/repos/profile_settings_repo.dart';

class ProfileSettingsRepolmpl extends ProfileSettingsRepo {
  final ProfileSettingsRemoteDataSource _profileSettingsRemoteDataSource;
  final ProfileSettingsLocalDataSource _profileSettingsLocalDataSource;

  ProfileSettingsRepolmpl(this._profileSettingsLocalDataSource,
      this._profileSettingsRemoteDataSource);

  @override
  Future<ApiResponse<BaseModel>> getTransactions() async {
    try {
      final response = await _profileSettingsRemoteDataSource.getTransactions();
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
  @override
  Future<ApiResponse<BaseModel>> getReceipt () async {
    try {
      final response = await _profileSettingsRemoteDataSource.getReceipt();
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
  @override
  Future<ApiResponse<BaseModel>> updateInformationStudent(StudentInfomationsModel upStudent) async {
    try {
      final response = await _profileSettingsRemoteDataSource.updateStudentInformation(upStudent);
      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(NetworkExceptions.getException(error));
    }
  }
}
