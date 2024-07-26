import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/shared/entity/user_entity.dart';

abstract class AuthRepo {
  Future<ApiResponse<BaseModel>> login({
    required String email,
    required String password,
  });
  void saveToken(UserEntity user);
  void saveUserEmail(UserEntity user);
  String? getUserEmail();
  bool isUserLoggedIn();

  Future<ApiResponse<BaseModel>> logout();
  void deleteToken();
}
