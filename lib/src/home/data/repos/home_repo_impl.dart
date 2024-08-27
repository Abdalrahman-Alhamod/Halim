// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/home/data/data_sources/home_local_data_source.dart';
import 'package:halim/src/home/data/data_sources/home_remote_data_source.dart';
import 'package:halim/src/home/domain/repos/home_repo.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource _homeRemoteDateSource;
  final HomeLocalDataSource _homeLocalDataSource;

  HomeRepoImpl(
    this._homeLocalDataSource,
    this._homeRemoteDateSource,
  );

  @override
  Future<ApiResponse<BaseModel>> getSubcategories(int? categoryId) async {
    try {
      final response = await _homeRemoteDateSource.getSubcategories(categoryId);
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
  Future<ApiResponse<BaseModel>> getInfStudent(int studentId) async {
    try {
      final response = await _homeRemoteDateSource.getInfStudent(studentId);
      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(NetworkExceptions.getException(error));
    }
  }

  @override
  Future<ApiResponse<BaseModel>> getAllCourses({
    required int subCategoryId,
    int? categoryId,
    required int? pageKay,
  }) async {
    try {
      final response = await _homeRemoteDateSource.getAllCourses(
          subCategoryId: subCategoryId,
          categoryId: categoryId,
          pageKay: pageKay);
      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(NetworkExceptions.getException(error));
    }
  }

  @override
  Future<ApiResponse<BaseModel>> getAllMentors({
    required int? pageKay,
  }) async {
    try {
      final response =
          await _homeRemoteDateSource.getAllMentors(pageKay: pageKay);
      return ApiResponse.success(response);
    } catch (error) {
      return ApiResponse.failure(NetworkExceptions.getException(error));
    }
  }

  @override
  Future<ApiResponse<BaseModel>> getAdvertisements() async {
    try {
      final response = await _homeRemoteDateSource.getAdvertisements();
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
  Future<ApiResponse<BaseModel>> getNotifications() async {
    try {
      final response = await _homeRemoteDateSource.getNotifications();
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
