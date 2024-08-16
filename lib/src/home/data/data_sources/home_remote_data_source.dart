// ignore_for_file: unused_field

import 'package:halim/core/functions/fake_delay.dart';
import 'package:halim/src/home/data/models/adv_model.dart';
import 'package:halim/src/home/data/models/student_profile_model.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/model/base_models.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';

class HomeRemoteDataSource {
  final ApiServices _apiServices;

  HomeRemoteDataSource(this._apiServices);

  Future<BaseModel> getSubcategories(int? categoryId) async {
    String url = '';
    if (categoryId == null) {
      url = AppUrl.subcategories;
    } else {
      url = '${AppUrl.categories}/$categoryId/${AppUrl.kSubcategories}';
    }
    final response = await _apiServices.get(
      url,
      hasToken: true,
    );
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => SubcategoryModel.fromJson(
          itemJson,
        ),
      ),
    );
  }
  Future<BaseModel> getAdvertisements() async {
    final response = await _apiServices.get(
      AppUrl.advertisements,
      hasToken: true,
    );
    await fakeDelay();
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => AdvModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getAllCourses({
    required int subCategoryId,
    int? categoryId,
    required int? pageKay,
  }) async {
    Map<String, String> queryParams = {
      AppUrl.include: AppUrl.courseCardIncludes,
    };
    if (subCategoryId != -1) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kSubcategories,
            subCategoryId.toString(),
          ),
        ],
      );
    }
    if (categoryId != null && categoryId != -1) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kCategories,
            categoryId.toString(),
          ),
        ],
      );
    }
    if (pageKay != null) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.page,
            pageKay.toString(),
          ),
        ],
      );
    }
    final response = await _apiServices.get(
      AppUrl.courses,
      queryParams: queryParams,
      hasToken: true,
    );

    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => CourseCardModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getAllMentors({
    required int? pageKay,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        const MapEntry(
          AppUrl.include,
          AppUrl.mentorCardIncludes,
        ),
      ],
    );
    if (pageKay != null) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.page,
            pageKay.toString(),
          ),
        ],
      );
    }
    final response = await _apiServices.get(
      AppUrl.mentors,
      queryParams: queryParams,
      hasToken: true,
    );

    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => MentorCardModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getInfStudent(int studentId) async {
    final response =
        await _apiServices.get("${AppUrl.student}/$studentId", hasToken: true);
    return BaseModel.fromJson(
        response, (json) => StudentProfileModel.fromJson(json));
  }
}
