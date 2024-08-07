// ignore_for_file: unused_field

import 'package:halim/src/mentor_details/data/data_sources/mentor_details_local_data_source.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';
import '../../../../core/domain/error_handler/network_exceptions.dart';
import '../../domain/repos/mentor_details_repo.dart';
import '../data_sources/mentor_details_remote_data_source.dart';

class MentorDetailsRepoImpl extends MentorDetailsRepo {
  final MentorDetailsRemoteDataSource _mentorDetailsRemoteDateSource;
  final MentorDetailsLocalDataSource _mentorDetailsLocalDataSource;

  MentorDetailsRepoImpl(
    this._mentorDetailsLocalDataSource,
    this._mentorDetailsRemoteDateSource,
  );

  @override
  Future<ApiResponse<BaseModel>> getMentorDetails({
    required int mentorId,
  }) async {
    try {
      final response = await _mentorDetailsRemoteDateSource.getMentorDetails(
        mentorId: mentorId,
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
  Future<ApiResponse<BaseModel>> getMentorCourses({
    required int mentorId,
    required int? pageKey,
  }) async {
    try {
      final response = await _mentorDetailsRemoteDateSource.getMentorCourses(
        mentorId: mentorId,
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
  Future<ApiResponse<BaseModel>> getMentorLastReviews({
    required int mentorId,
    required String ratingFilter,
  }) async {
    try {
      final response =
          await _mentorDetailsRemoteDateSource.getMentorLastReviews(
        mentorId: mentorId,
        ratingFilter: ratingFilter,
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
  Future<ApiResponse<BaseModel>> getMentorPaginatedReviews({
    required int mentorId,
    required String ratingFilter,
    required int? pageKey,
  }) async {
    try {
      final response =
          await _mentorDetailsRemoteDateSource.getMentorPaginatedReviews(
        mentorId: mentorId,
        ratingFilter: ratingFilter,
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
