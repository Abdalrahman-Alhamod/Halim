import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class SearchRepo {
  Future<ApiResponse<BaseModel>> get();
}
