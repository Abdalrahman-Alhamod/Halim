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

  @override
  Future<ApiResponse<BaseModel>> getCourseLastReviews(
      {required int courseId, required String ratingFilter}) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseLastReviews(
        courseId: courseId,
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
  Future<ApiResponse<BaseModel>> getUserCourseReview(int courseId) async {
    try {
      final response = await _courseDetailsRemoteDateSource.getUserCourseReview(
        courseId,
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
  Future<ApiResponse<BaseModel>> submitUserReview({
    required int courseId,
    required int rating,
    String? comment,
  }) async {
    try {
      final response = await _courseDetailsRemoteDateSource.submitUserReview(
        courseId: courseId,
        rating: rating,
        comment: comment,
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
  Future<ApiResponse<BaseModel>> getCoursePaginatedReviews({
    required int courseId,
    required String ratingFilter,
    required int? pageKey,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCoursePaginatedReviews(
        courseId: courseId,
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

  @override
  Future<ApiResponse<BaseModel>> getCourseLessonsSection({
    required int courseId,
    required int? pageKey,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseLessonsSection(
        courseId: courseId,
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
  Future<ApiResponse<BaseModel>> getCourseLessonDetails({
    required int courseId,
    required int sectionId,
    required int lessonId,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseLessonDetails(
        courseId: courseId,
        sectionId: sectionId,
        lessonId: lessonId,
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
  Future<ApiResponse<BaseModel>> submitCourseLessonCompletion({
    required int courseId,
    required int sectionId,
    required int lessonId,
    int? quizResult,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.submitCourseLessonCompletion(
        courseId: courseId,
        sectionId: sectionId,
        lessonId: lessonId,
        quizResult: quizResult,
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
  Future<ApiResponse<BaseModel>> saveCourse({required int courseId}) async {
    try {
      final response = await _courseDetailsRemoteDateSource.saveCourse(
        courseId: courseId,
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
  Future<ApiResponse<BaseModel>> getCourseAnnouncementsSection({
    required int courseId,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseAnnouncementsSection(
        courseId: courseId,
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
  Future<ApiResponse<BaseModel>> getCourseCertificate({
    required int courseId,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseCertificate(
        courseId: courseId,
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
  Future<ApiResponse<BaseModel>> getCourseCouponDetails({
    required int courseId,
    required String code,
  }) async {
    try {
      final response =
          await _courseDetailsRemoteDateSource.getCourseCouponDetails(
        courseId: courseId,
        code: code,
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
  Future<ApiResponse<BaseModel>> enrollCourse({
    required int courseId,
    required String code,
    required String pin,
  }) async {
    try {
      final response = await _courseDetailsRemoteDateSource.enrollCourse(
          courseId: courseId, code: code, pin: pin);
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
  Future<ApiResponse<BaseModel>> getWallet() async {
    try {
      final response = await _courseDetailsRemoteDateSource.getWallet();
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
