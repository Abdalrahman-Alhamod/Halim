import 'package:halim/core/data/sources/local/app_storage_keys.dart';
import 'package:halim/src/shared/entity/user_entity.dart';

import '../../../../core/data/sources/local/app_storage.dart';

class AuthLocalDataSource {
  void saveUser(UserEntity user) {
    AppStorage.instance.writeData(
      AppStorageKeys.TOKEN,
      user.accessToken,
    );
    AppStorage.instance.writeData(
      AppStorageKeys.LOGIN_TIME,
      DateTime.now().toIso8601String(),
    );
  }

  void saveUserEmail(UserEntity user) {
    AppStorage.instance.writeData(
      AppStorageKeys.USER_EMAIL,
      user.email,
    );
  }

  String? getUserEmail() {
    return AppStorage.instance.readData(
      AppStorageKeys.USER_EMAIL,
    );
  }

  bool isUserLoggedIn() {
    return AppStorage.instance.readData(
          AppStorageKeys.TOKEN,
        ) !=
        null;
  }
  void deleteToken(){
    AppStorage.instance.removeData(
      AppStorageKeys.TOKEN,
    );
  }
}
