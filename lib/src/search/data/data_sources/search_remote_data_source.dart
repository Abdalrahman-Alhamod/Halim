import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/src/search/data/models/search_keyword_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';

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
}
