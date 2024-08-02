// ignore_for_file: unused_field

import 'package:halim/src/home/data/models/student_profile_model.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/model/base_models.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';

class HomeRemoteDataSource {
  final ApiServices _apiServices;

  HomeRemoteDataSource(this._apiServices);

  Future<BaseModel> getSubcategories(int categoryId) async {
    final response = await _apiServices.get(
      '${AppUrl.categories}/$categoryId/${AppUrl.kSubcategories}',
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

  Future<BaseModel> getInfStudent(int studentId) async {
    final response = await _apiServices.get(AppUrl.student, hasToken: true);
    return BaseModel.fromJson(response, (json) => StudentProfileModel.fromJson(json));
  }
}
