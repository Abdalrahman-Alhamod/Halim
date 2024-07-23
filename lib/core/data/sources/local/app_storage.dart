import 'package:hive/hive.dart';

import 'app_storage_boxes.dart';
import 'app_storage_keys.dart';

class AppStorage {
  static final AppStorage _instance = AppStorage._();

  static AppStorage get instance => _instance;

  AppStorage._();

  Future<void> init() async {
    await Hive.openBox(AppStorageBoxes.GENERAL);
  }

  Box<dynamic> get box => Hive.box(AppStorageBoxes.GENERAL);

  void writeData(String key, dynamic value) {
    box.put(key, value);
  }

  dynamic readData(String key) {
    return box.get(key);
  }

  bool isReadData(String key) {
    return box.containsKey(key);
  }

  void removeData(String key) {
    if (box.containsKey(key)) {
      box.delete(key);
    }
  }

  Future<void> dispose() async {
    removeData(AppStorageKeys.TOKEN);
    removeData(AppStorageKeys.LOGIN_TIME);
    // removeData(FIRST_TIME);
  }
}
