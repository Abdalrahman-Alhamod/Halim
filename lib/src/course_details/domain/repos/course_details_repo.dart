import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class CourseDetailsRepo {
  Future<ApiResponse<BaseModel>> getCourseMainSection(int id);
  Future<ApiResponse<BaseModel>> getCourseAboutSection(int id);
}
