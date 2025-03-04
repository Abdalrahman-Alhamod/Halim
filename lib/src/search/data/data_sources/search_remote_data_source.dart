import '../../../../core/data/model/base_models.dart';
import '../models/search_filter_model.dart';
import '../models/search_keyword_model.dart';
import '../../../shared/app_data.dart';
import '../../../shared/model/course_card_model.dart';
import '../../../shared/model/mentor_card_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';
import '../../../shared/model/category_model.dart';
import '../../../shared/model/subcategory_model.dart';

class SearchRemoteDateSource {
  final ApiServices _apiServices;

  SearchRemoteDateSource(this._apiServices);

  Future<BaseModel> getSearchKeywords() async {
    final response = await _apiServices.get(
      AppUrl.searchKeywords,
      hasToken: true,
    );

    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => SearchKeywordModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> deleteSearchKeyword(int id) async {
    final response = await _apiServices.delete(
      '${AppUrl.searchKeywords}/$id',
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> deleteSearchKeywords() async {
    final response = await _apiServices.delete(
      AppUrl.searchKeywords,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> searchCourses({
    required String keyword,
    required int? pageKey,
    required String sortBy,
    required SearchFilterModel filters,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        MapEntry(
          AppUrl.searchQuery,
          keyword,
        ),
        const MapEntry(
          AppUrl.include,
          AppUrl.courseCardIncludes,
        ),
        MapEntry(
          AppUrl.sortBy,
          sortBy,
        ),
        MapEntry(
          AppUrl.kDuration,
          '${filters.startDuation},${filters.endDuration}',
        ),
        MapEntry(
          AppUrl.kPrice,
          '${filters.startPrice},${filters.endPrice}',
        ),
      ],
    );
    if (filters.category.id != allId) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kCategories,
            filters.category.id.toString(),
          )
        ],
      );
    }
    if (filters.subcategory.id != allId) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kSubcategories,
            filters.subcategory.id.toString(),
          )
        ],
      );
    }
    if (filters.level != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kLevels,
            filters.level,
          )
        ],
      );
    }
    if (filters.rating != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kRatings,
            filters.rating,
          )
        ],
      );
    }
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

  Future<BaseModel> searchMentors({
    required String keyword,
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = Map.fromEntries(
      [
        MapEntry(
          AppUrl.searchQuery,
          keyword,
        ),
        const MapEntry(
          AppUrl.include,
          AppUrl.mentorCardIncludes,
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

  Future<BaseModel> getCategories() async {
    final response = await _apiServices.get(
      AppUrl.categories,
      hasToken: true,
    );
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => CategoryModel.fromJson(
          itemJson,
        ),
      ),
    );
  }
}
