// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/my_courses/data/data_sources/my_courses_local_data_source.dart';
import 'package:halim/src/my_courses/data/data_sources/my_courses_remote_data_source.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';
import '../../domain/repos/my_courses_repo.dart';

class MyCoursesRepoImpl extends MyCoursesRepo {
  final MyCoursesLocalDataSource _myCoursesLocalDataSource;
  final MyCoursesRemoteDataSource _myCoursesRemoteDateSource;

  MyCoursesRepoImpl(
    this._myCoursesLocalDataSource,
    this._myCoursesRemoteDateSource,
  );

  @override
  Future<ApiResponse<BaseModel>> getCompletedCourses(
      {required int? pageKey}) async {
    try {
      final response = await _myCoursesRemoteDateSource.getCompletedCourses(
        pageKey: pageKey,
      );
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
  Future<ApiResponse<BaseModel>> getOngoingCourses(
      {required int? pageKey}) async {
    try {
      final response = await _myCoursesRemoteDateSource.getOngoingCourses(
        pageKey: pageKey,
      );
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
  Future<ApiResponse<BaseModel>> getSavedCourses(
      {required int? pageKey}) async {
    try {
      final response = await _myCoursesRemoteDateSource.getSavedCourses(
        pageKey: pageKey,
      );
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
