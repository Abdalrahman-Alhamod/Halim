import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';
import '../../data/models/search_filter_model.dart';

abstract class SearchRepo {
  Future<ApiResponse<BaseModel>> getSearchKeywords();
  Future<ApiResponse<BaseModel>> deleteSearchKeyword(int id);
  Future<ApiResponse<BaseModel>> deleteSearchKeywords();
  Future<ApiResponse<BaseModel>> searchCourses({
    required String keyword,
    required int? pageKey,
    required String sortBy,
    required SearchFilterModel filters,
  });
  Future<ApiResponse<BaseModel>> getSubcategories(int? categoryId);
  Future<ApiResponse<BaseModel>> getCategories();
  Future<ApiResponse<BaseModel>> searchMentors({
    required String keyword,
    required int? pageKey,
  });
}
