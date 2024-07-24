import 'package:halim/src/shared/model/test_user_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';

class SearchRemoteDateSource {
  final ApiServices _apiServices;

  SearchRemoteDateSource(this._apiServices);

  Future<BaseModel> get() async {
    final response = await _apiServices.get(
      AppUrl.testUrl,
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => TestUserModel.fromJson(json),
    );
  }
}
