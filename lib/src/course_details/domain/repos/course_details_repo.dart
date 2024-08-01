import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class CourseDetailsRepo {
  Future<ApiResponse<BaseModel>> getCourseMainSection(int id);
  Future<ApiResponse<BaseModel>> getCourseAboutSection(int id);
  Future<ApiResponse<BaseModel>> getCourseLastReviews({
    required int courseId,
    required String ratingFilter,
  });
  Future<ApiResponse<BaseModel>> getUserCourseReview(
    int courseId,
  );
  Future<ApiResponse<BaseModel>> submitUserReview({
    required int courseId,
    required int rating,
    String? comment,
  });
  Future<ApiResponse<BaseModel>> getCoursePaginatedReviews({
    required int courseId,
    required String ratingFilter,
    required int? pageKey,
  });
}
