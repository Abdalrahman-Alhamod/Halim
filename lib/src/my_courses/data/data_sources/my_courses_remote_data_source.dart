// ignore_for_file: unused_field

import 'package:halim/src/my_courses/data/models/my_course_card_model.dart';
import 'package:halim/src/shared/model/course_card_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/model/base_models.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';

class MyCoursesRemoteDataSource {
  final ApiServices _apiServices;

  MyCoursesRemoteDataSource(this._apiServices);

  Future<BaseModel> getOngoingCourses({
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.kState,
          AppUrl.kOngoing,
        ),
        const MapEntry(
          AppUrl.include,
          AppUrl.ongoingCoursesIncludes,
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
      AppUrl.myCourses,
      hasToken: true,
      queryParams: queryParams,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => MyCourseCardModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getCompletedCourses({
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.kState,
          AppUrl.kCompleted,
        ),
        const MapEntry(
          AppUrl.include,
          AppUrl.ongoingCoursesIncludes,
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
      AppUrl.myCourses,
      hasToken: true,
      queryParams: queryParams,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => MyCourseCardModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

   Future<BaseModel> getSavedCourses({
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.kState,
          AppUrl.kSaved,
        ),
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
      AppUrl.myCourses,
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
}
