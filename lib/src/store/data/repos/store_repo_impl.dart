// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/store/data/data_sources/store_local_data_source.dart';
import 'package:halim/src/store/data/data_sources/store_remote_data_source.dart';
import 'package:halim/src/store/domain/repos/store_repo.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';

class StoreRepoImpl extends StoreRepo {
  final StoreLocalDataSource _storeLocalDataSourcel;
  final StoreRemoteDataSource _storeRemoteDataSource;

  StoreRepoImpl(this._storeLocalDataSourcel, this._storeRemoteDataSource);

  @override
  Future<ApiResponse<BaseModel>> getStoreDiscounts({
    required int? pageKey,
    required String filter,
  }) async {
    try {
      final response = await _storeRemoteDataSource.getStoreDiscounts(
        pageKey: pageKey,
        filter: filter,
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
  Future<ApiResponse<BaseModel>> getStoreItems({required int? pageKey}) async {
    try {
      final response = await _storeRemoteDataSource.getStoreItems(
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
  Future<ApiResponse<BaseModel>> purchaseItem({
    required int itemId,
  }) async {
    try {
      final response = await _storeRemoteDataSource.purchaseItem(
        itemId: itemId,
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
  Future<ApiResponse<BaseModel>> getStudentPoints({
    required int studentId,
  }) async {
    try {
      final response = await _storeRemoteDataSource.getStudentPoints(
        studentId: studentId,
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
