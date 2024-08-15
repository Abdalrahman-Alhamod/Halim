import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';

abstract class ProfileSettingsRepo {
  Future<ApiResponse<BaseModel>> getTransactions();
}
