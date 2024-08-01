// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';
import 'package:halim/src/course_details/data/models/course_review_block_model.dart';

import '../../../../core/data/sources/remote/services/api_services.dart';

class CourseDetailsRemoteDataSource {
  final ApiServices _apiServices;

  CourseDetailsRemoteDataSource(this._apiServices);

  Future<BaseModel> getCourseMainSection(int id) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.courseMainSectionIncludes,
        ),
      ],
    );
    final response = await _apiServices.get(
      '${AppUrl.courses}/$id',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => CourseMainSectionModel.fromJson(json),
    );
  }

  Future<BaseModel> getCourseAboutSection(int id) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.courseAboutSectionIncludes,
        ),
      ],
    );
    final response = await _apiServices.get(
      '${AppUrl.courses}/$id',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => CourseAboutSectionModel.fromJson(json),
    );
  }

  Future<BaseModel> getCourseLastReviews({
    required int courseId,
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
      '${AppUrl.courses}/$courseId/${AppUrl.kReviews}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => CourseReviewBlockModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getUserCourseReview(
    int courseId,
  ) async {
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kUserReview}',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => CourseReviewBlockModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> submitUserReview({
    required int courseId,
    required int rating,
    String? comment,
  }) async {
    Map<String, dynamic> body = {};
    body.addEntries(
      [
        MapEntry(
          AppUrl.kRating,
          rating,
        ),
      ],
    );
    if (comment != null) {
      body.addEntries(
        [
          MapEntry(
            AppUrl.kComment,
            comment,
          ),
        ],
      );
    }
    final response = await _apiServices.post(
      '${AppUrl.courses}/$courseId/${AppUrl.kReviews}',
      body: body,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> getCoursePaginatedReviews({
    required int courseId,
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
      '${AppUrl.courses}/$courseId/${AppUrl.kReviews}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => CourseReviewBlockModel.fromJson(
          itemJson,
        ),
      ),
    );
  }
}
