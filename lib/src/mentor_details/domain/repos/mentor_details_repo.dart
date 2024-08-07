import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class MentorDetailsRepo {
  Future<ApiResponse<BaseModel>> getMentorDetails({
    required int mentorId,
  });
  Future<ApiResponse<BaseModel>> getMentorCourses({
    required int mentorId,
    required int? pageKey,
  });
  Future<ApiResponse<BaseModel>> getMentorLastReviews({
    required int mentorId,
    required String ratingFilter,
  });
  Future<ApiResponse<BaseModel>> getMentorPaginatedReviews({
    required int mentorId,
    required String ratingFilter,
    required int? pageKey,
  });
}
