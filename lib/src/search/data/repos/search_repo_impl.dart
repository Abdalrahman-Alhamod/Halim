// ignore_for_file: unused_field

import 'package:halim/src/search/data/data_sources/search_local_data_source.dart';
import 'package:halim/src/search/data/data_sources/search_remote_data_source.dart';
import 'package:halim/src/search/data/models/search_filter_model.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';
import '../../../../core/domain/error_handler/network_exceptions.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDateSource _searchRemoteDateSource;
  final SearchLocalDataSource _searchLocalDataSource;

  SearchRepoImpl(
    this._searchLocalDataSource,
    this._searchRemoteDateSource,
  );

  @override
  Future<ApiResponse<BaseModel>> getSearchKeywords() async {
    try {
      final response = await _searchRemoteDateSource.getSearchKeywords();
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
  Future<ApiResponse<BaseModel>> deleteSearchKeyword(int id) async {
    try {
      final response = await _searchRemoteDateSource.deleteSearchKeyword(id);
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
  Future<ApiResponse<BaseModel>> deleteSearchKeywords() async {
    try {
      final response = await _searchRemoteDateSource.deleteSearchKeywords();
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
  Future<ApiResponse<BaseModel>> searchCourses({
    required String keyword,
    required int? pageKey,
    required String sortBy,
    required SearchFilterModel filters,
  }) async {
    try {
      final response = await _searchRemoteDateSource.searchCourses(
        keyword: keyword,
        pageKey: pageKey,
        sortBy: sortBy,
        filters: filters,
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
  Future<ApiResponse<BaseModel>> searchMentors({
    required String keyword,
    required int? pageKey,
  }) async {
    try {
      final response = await _searchRemoteDateSource.searchMentors(
        keyword: keyword,
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
  Future<ApiResponse<BaseModel>> getSubcategories(int? categoryId) async {
    try {
      final response =
          await _searchRemoteDateSource.getSubcategories(categoryId);
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
  Future<ApiResponse<BaseModel>> getCategories() async {
    try {
      final response = await _searchRemoteDateSource.getCategories();
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
