import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';

import '../../../shared/model/user_model.dart';

abstract class AuthRepo {
  Future<ApiResponse<BaseModel>> login({
    required String email,
    required String password,
  });
  void saveToken(UserModel user);
  void saveUserEmail(UserModel user);
  String? getUserEmail();
  bool isUserLoggedIn();
  Future<ApiResponse<BaseModel>> logout();
  void deleteToken();
  Future<ApiResponse<BaseModel>> register({
    required String email,
    required String password,
  });
  Future<ApiResponse<BaseModel>> signInWithGoogle();
  Future<ApiResponse<BaseModel>> sendVerificationCode({
    required String email,
  });
  Future<ApiResponse<BaseModel>> confirmEmail({
    required String code,
  });
  Future<ApiResponse<BaseModel>> resetPassword({
    required int id,
    required String oldPassword,
    required String newPassword,
  });
  Future<ApiResponse<BaseModel>> registerFCM({
    required String fcmToken,
  });
}
