import 'package:halim/src/search/data/data_sources/search_local_data_source.dart';
import 'package:halim/src/search/data/data_sources/search_remote_data_source.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';
import '../../../../core/domain/error_handler/network_exceptions.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDateSource _searchRemoteDateSource;
  // ignore: unused_field
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
}
