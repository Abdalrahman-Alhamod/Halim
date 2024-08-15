// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/achievements/data/data_sources/achievements_local_data_source.dart';
import 'package:halim/src/achievements/data/data_sources/achievements_remote_data_source.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';
import '../../domain/repos/achievements_repo.dart';

class AchievementsRepoImpl extends AchievementsRepo {
  final AchievementsLocalDataSource _achievementsLocalDataSource;
  final AchievementsRemoteDataSource _achievementsRemoteDataSource;

  AchievementsRepoImpl(
      this._achievementsLocalDataSource, this._achievementsRemoteDataSource);

  @override
  Future<ApiResponse<BaseModel>> getAchievementsBoard() async {
    try {
      final response =
          await _achievementsRemoteDataSource.getAchievementsBoard();
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
  Future<ApiResponse<BaseModel>> getAchievementsSummery() async {
    try {
      final response =
          await _achievementsRemoteDataSource.getAchievementsSummery();
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
  Future<ApiResponse<BaseModel>> getAvatars() async {
    try {
      final response = await _achievementsRemoteDataSource.getAvatars();
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
  Future<ApiResponse<BaseModel>> getBadges(String type) async {
    try {
      final response = await _achievementsRemoteDataSource.getBadges(type);
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
