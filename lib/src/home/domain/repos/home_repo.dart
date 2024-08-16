import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class HomeRepo {
  Future<ApiResponse<BaseModel>> getSubcategories(int? categoryId);
  Future<ApiResponse<BaseModel>> getAdvertisements();
  Future<ApiResponse<BaseModel>> getInfStudent(int studentId);
  Future<ApiResponse<BaseModel>> getAllCourses({
    required int subCategoryId,
    int? categoryId,
    required int? pageKay,
  });
  Future<ApiResponse<BaseModel>> getAllMentors({
    required int? pageKay,
  });
}
