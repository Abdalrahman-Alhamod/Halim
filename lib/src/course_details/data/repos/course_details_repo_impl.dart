// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/course_details/data/data_sources/course_details_local_data_source.dart';
import 'package:halim/src/course_details/data/data_sources/course_details_remote_data_source.dart';
import 'package:halim/src/course_details/domain/repos/course_details_repo.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';

class CourseDetailsRepoImpl extends CourseDetailsRepo {
  final CourseDetailsLocalDataSource _courseDetailsLocalDateSource;
  final CourseDetailsRemoteDataSource _courseDetailsRemoteDateSource;

  CourseDetailsRepoImpl(
    this._courseDetailsLocalDateSource,
    this._courseDetailsRemoteDateSource,
  );

  @override
  Future<ApiResponse<BaseModel>> getCourseMainSection(int id) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseMainSection(id);
      return ApiResponse.success(
        response,
      );
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(
          error,
        ),
      );
    }
  }

  @override
  Future<ApiResponse<BaseModel>> getCourseAboutSection(int id) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseAboutSection(id);
      return ApiResponse.success(
        response,
      );
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(
          error,
        ),
      );
    }
  }
}
