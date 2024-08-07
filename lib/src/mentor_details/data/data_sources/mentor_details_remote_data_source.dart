import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/model/base_models.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';
import '../../../shared/model/course_card_model.dart';
import '../../../shared/model/review_block_model.dart';
import '../models/mentor_details_model.dart';

class MentorDetailsRemoteDataSource {
  final ApiServices _apiServices;

  MentorDetailsRemoteDataSource(this._apiServices);

  Future<BaseModel> getMentorDetails({
    required int mentorId,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.mentorDetailsIncludes,
        ),
      ],
    );
    final response = await _apiServices.get(
      '${AppUrl.mentors}/$mentorId',
      hasToken: true,
      queryParams: queryParams,
    );
    return BaseModel.fromJson(
      response,
      (json) => MentorDetailsModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> getMentorCourses({
    required int mentorId,
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.courseCardIncludes,
        ),
      ],
    );
    if (pageKey != null) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.page,
            pageKey.toString(),
          )
        ],
      );
    }
    final response = await _apiServices.get(
      '${AppUrl.mentors}/$mentorId/${AppUrl.kCourses}',
      hasToken: true,
      queryParams: queryParams,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => CourseCardModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getMentorLastReviews({
    required int mentorId,
    required String ratingFilter,
  }) async {
    Map<String, String> queryParams = {};
    if (ratingFilter != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kRatings,
            ratingFilter,
          ),
        ],
      );
    }
    final response = await _apiServices.get(
      '${AppUrl.mentors}/$mentorId/${AppUrl.kReviews}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => ReviewBlockModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

   Future<BaseModel> getMentorPaginatedReviews({
    required int mentorId,
    required String ratingFilter,
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = {};
    if (ratingFilter != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kRatings,
            ratingFilter,
          ),
        ],
      );
    }
    queryParams.addEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.all,
        ),
      ],
    );
    if (pageKey != null) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.page,
            pageKey.toString(),
          )
        ],
      );
    }
    final response = await _apiServices.get(
      '${AppUrl.mentors}/$mentorId/${AppUrl.kReviews}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => ReviewBlockModel.fromJson(
          itemJson,
        ),
      ),
    );
  }
}
