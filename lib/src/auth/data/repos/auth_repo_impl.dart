// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/auth/data/data_sources/auth_local_data_source.dart';
import 'package:halim/src/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:halim/src/auth/domain/repos/auth_repo.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../shared/model/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepoImpl(
    this._authLocalDataSource,
    this._authRemoteDataSource,
  );

  @override
  Future<ApiResponse<BaseModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _authRemoteDataSource.login(
        email: email,
        password: password,
      );

      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(error),
      );
    }
  }

  @override
  void saveToken(UserModel user) {
    _authLocalDataSource.saveUser(user);
  }

  @override
  void saveUserEmail(UserModel user) {
    _authLocalDataSource.saveUserEmail(user);
  }

  @override
  String? getUserEmail() {
    return _authLocalDataSource.getUserEmail();
  }

  @override
  bool isUserLoggedIn() {
    return _authLocalDataSource.isUserLoggedIn();
  }

  @override
  Future<ApiResponse<BaseModel>> logout() async {
    try {
      final response = await _authRemoteDataSource.logout();

      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(error),
      );
    }
  }

  @override
  void deleteToken() {
    _authLocalDataSource.deleteToken();
  }

  @override
  Future<ApiResponse<BaseModel>> register({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _authRemoteDataSource.register(
        email: email,
        password: password,
      );

      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(error),
      );
    }
  }
}
