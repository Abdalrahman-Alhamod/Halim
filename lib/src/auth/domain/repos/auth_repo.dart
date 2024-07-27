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
}
