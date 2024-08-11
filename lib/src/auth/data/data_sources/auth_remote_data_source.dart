// ignore_for_file: unused_field

import 'package:halim/src/shared/model/user_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';

class AuthRemoteDataSource {
  final ApiServices _apiServices;

  AuthRemoteDataSource(this._apiServices);

  Future<BaseModel> login({
    required String email,
    required String password,
  }) async {
    final response = await _apiServices.post(
      AppUrl.login,
      body: {
        "email": email,
        "password": password,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }

  Future<BaseModel> logout() async {
    final response = await _apiServices.post(
      AppUrl.logout,
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) {},
    );
  }

   Future<BaseModel> register({
    required String email,
    required String password,
  }) async {
    final response = await _apiServices.post(
      AppUrl.register,
      body: {
        "email": email,
        "password": password,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }
}
