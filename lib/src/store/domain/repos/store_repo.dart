import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';

abstract class StoreRepo {
  Future<ApiResponse<BaseModel>> getStoreDiscounts({
    required int? pageKey,
    required String filter,
  });
  Future<ApiResponse<BaseModel>> getStoreItems({
    required int? pageKey,
  });
  Future<ApiResponse<BaseModel>> purchaseItem({
    required int itemId,
  });
  Future<ApiResponse<BaseModel>> getStudentPoints({
    required int studentId,
  });
}
