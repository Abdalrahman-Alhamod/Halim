// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/course_details/data/models/anouncement_box_model.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/data/models/course_lesson_model.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';
import 'package:halim/src/course_details/data/models/lessons_section_model.dart';
import 'package:halim/src/course_details/data/models/wallet_model.dart';
import 'package:halim/src/shared/model/discount_model.dart';

import '../../../../core/data/sources/remote/services/api_services.dart';
import '../../../shared/model/review_block_model.dart';
import '../models/certificate_model.dart';

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

  Future<BaseModel> getCourseLastReviews({
    required int courseId,
    required String ratingFilter,
  }) async {
    Map<String, String> queryParams = {};
    if (ratingFilter != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kRatings,
            ratingFilter,
          ),
        ],
      );
    }
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kReviews}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => ReviewBlockModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getUserCourseReview(
    int courseId,
  ) async {
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kUserReview}',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => ReviewBlockModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> submitUserReview({
    required int courseId,
    required int rating,
    String? comment,
  }) async {
    Map<String, dynamic> body = {};
    body.addEntries(
      [
        MapEntry(
          AppUrl.kRating,
          rating,
        ),
      ],
    );
    if (comment != null) {
      body.addEntries(
        [
          MapEntry(
            AppUrl.kComment,
            comment,
          ),
        ],
      );
    }
    final response = await _apiServices.post(
      '${AppUrl.courses}/$courseId/${AppUrl.kReviews}',
      body: body,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> getCourseLessonsSection({
    required int courseId,
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = {};
    queryParams.addEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.courseLessonsSectionIncludes,
        ),
      ],
    );
    if (pageKey != null) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.page,
            pageKey.toString(),
          )
        ],
      );
    }
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kSections}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => LessonsSectionModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getCoursePaginatedReviews({
    required int courseId,
    required String ratingFilter,
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = {};
    if (ratingFilter != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kRatings,
            ratingFilter,
          ),
        ],
      );
    }
    queryParams.addEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.all,
        ),
      ],
    );
    if (pageKey != null) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.page,
            pageKey.toString(),
          )
        ],
      );
    }
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kReviews}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => ReviewBlockModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getCourseLessonDetails({
    required int courseId,
    required int sectionId,
    required int lessonId,
  }) async {
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kSections}/$sectionId/${AppUrl.kLessons}/$lessonId',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => CourseLessonModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> submitCourseLessonCompletion({
    required int courseId,
    required int sectionId,
    required int lessonId,
    int? quizResult,
  }) async {
    Map<String, dynamic> body = {};
    body.addEntries(
      [
        MapEntry(
          AppUrl.kResult,
          quizResult.toString(),
        ),
      ],
    );
    final response = await _apiServices.post(
      '${AppUrl.courses}/$courseId/${AppUrl.kSections}/$sectionId/${AppUrl.kLessons}/$lessonId',
      body: quizResult != null ? body : null,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> saveCourse({required int courseId}) async {
    final response = await _apiServices.post(
      '${AppUrl.courses}/$courseId/${AppUrl.kSave}',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> getCourseAnnouncementsSection({
    required int courseId,
  }) async {
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kAnnouncements}',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => AnnouncementBoxModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getCourseCertificate({
    required int courseId,
  }) async {
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kCertificate}',
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => CertificateModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> getCourseCouponDetails({
    required int courseId,
    required String code,
  }) async {
    Map<String, String> queryParams = {};
    queryParams.addEntries(
      [
        MapEntry(
          AppUrl.kCode,
          code,
        ),
      ],
    );
    final response = await _apiServices.get(
      '${AppUrl.courses}/$courseId/${AppUrl.kCouponDetails}',
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => DiscountModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> enrollCourse({
    required int courseId,
    required String code,
    required String pin,
  }) async {
    Map<String, String> body = {};
    body.addEntries(
      [
        MapEntry(
          AppUrl.kPIN,
          pin,
        ),
      ],
    );
    if (code.isNotEmpty) {
      body.addEntries(
        [
          MapEntry(
            AppUrl.kCode,
            code,
          ),
        ],
      );
    }

    final response = await _apiServices.post(
      '${AppUrl.courses}/$courseId/${AppUrl.kEnroll}',
      body: body,
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> getWallet() async {
    // TODO remove query parameters
    Map<String, String> queryParams = {};
    queryParams.addEntries(
      [
        const MapEntry(
          "student",
          "1061",
        ),
      ],
    );
    final response = await _apiServices.get(
      AppUrl.wallet,
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => WalletModel.fromJson(
        json,
      ),
    );
  }
}
