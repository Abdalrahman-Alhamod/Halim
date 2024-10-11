import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class MyCoursesRepo {
  Future<ApiResponse<BaseModel>> getOngoingCourses({
    required int? pageKey,
  });
  Future<ApiResponse<BaseModel>> getCompletedCourses({
    required int? pageKey,
  });
  Future<ApiResponse<BaseModel>> getSavedCourses({
    required int? pageKey,
  });
}
