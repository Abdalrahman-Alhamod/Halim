import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class HomeRepo {
  Future<ApiResponse<BaseModel>> getSubcategories(int categoryId);
  Future<ApiResponse<BaseModel>> getInfStudent(int studentId);
  Future<ApiResponse<BaseModel>> getAllCourses(int subCategoryId);
  Future<ApiResponse<BaseModel>> getAllMentors();
}
