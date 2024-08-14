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
  Future<ApiResponse<BaseModel>> getCourseLessonsSection({
    required int courseId,
    required int? pageKey,
  });
  Future<ApiResponse<BaseModel>> getCourseLessonDetails({
    required int courseId,
    required int sectionId,
    required int lessonId,
  });
  Future<ApiResponse<BaseModel>> submitCourseLessonCompletion({
    required int courseId,
    required int sectionId,
    required int lessonId,
    int? quizResult,
  });
  Future<ApiResponse<BaseModel>> saveCourse({
    required int courseId,
  });
  Future<ApiResponse<BaseModel>> getCourseAnnouncementsSection({
    required int courseId,
  });
  Future<ApiResponse<BaseModel>> getCourseCertificate({
    required int courseId,
  });
  Future<ApiResponse<BaseModel>> getCourseCouponDetails({
    required int courseId,
    required String code,
  });
  Future<ApiResponse<BaseModel>> enrollCourse({
    required int courseId,
    required String code,
    required String pin,
  });
  Future<ApiResponse<BaseModel>> getWallet();
}
