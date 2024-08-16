// ignore_for_file: unused_field

import 'package:halim/core/data/sources/remote/services/api_services.dart';
import 'package:halim/src/store/data/models/store_discount_model.dart';
import 'package:halim/src/store/data/models/store_item_model.dart';

import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/model/base_models.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../models/student_points_model.dart';

class StoreRemoteDataSource {
  final ApiServices _apiServices;

  StoreRemoteDataSource(this._apiServices);

  Future<BaseModel> getStoreDiscounts({
    required int? pageKey,
    required String filter,
  }) async {
    Map<String, String> queryParams = {
      AppUrl.kType: AppUrl.kDiscounts,
    };
    if (filter != AppUrl.all) {
      queryParams.addEntries(
        [
          MapEntry(
            AppUrl.kFilter,
            filter,
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
      AppUrl.storeItems,
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => StoreDiscountModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getStoreItems({
    required int? pageKey,
  }) async {
    Map<String, String> queryParams = {
      AppUrl.kType: AppUrl.kItems,
    };
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
      AppUrl.storeItems,
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => StoreItemModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> purchaseItem({
    required int itemId,
  }) async {
    final response = await _apiServices.post(
      '${AppUrl.storeItems}/$itemId/${AppUrl.kPurchase}',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> getStudentPoints({
    required int studentId,
  }) async {
    final response = await _apiServices.get(
      '${AppUrl.student}/$studentId',
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => StudentPointsModel.fromJson(
        json,
      ),
    );
  }
}
