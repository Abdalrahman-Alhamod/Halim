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

  Future<BaseModel> signInWithGoogle({
    required String email,
    required String name,
    required String image,
  }) async {
    final response = await _apiServices.post(
      AppUrl.googleSignIn,
      body: {
        "email": email,
        "name": name,
        "image": image,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }

  Future<BaseModel> sendVerificationCode({
    required String email,
  }) async {
    // TODO add send email url
    final response = await _apiServices.post(
      AppUrl.googleSignIn,
      body: {
        "email": email,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }

  Future<BaseModel> confirmEmail({
    required String code,
  }) async {
    // TODO add confirm email url
    final response = await _apiServices.post(
      AppUrl.googleSignIn,
      body: {
        "code": code,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }

  Future<BaseModel> resetPassword({
    required int id,
    required String oldPassword,
    required String newPassword,
  }) async {
    // TODO add reset password url
    final response = await _apiServices.post(
      AppUrl.googleSignIn,
      body: {
        "oldPassword": oldPassword,
        "newPassword": newPassword,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }

  Future<BaseModel> registerFCM({
    required String fcmToken,
  }) async {
    // TODO add register fcm url
    final response = await _apiServices.post(
      AppUrl.googleSignIn,
      body: {
        "fcmToken": fcmToken,
      },
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => UserModel.fromJson(json),
    );
  }
}
