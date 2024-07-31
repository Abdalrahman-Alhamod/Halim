// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';

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
}
