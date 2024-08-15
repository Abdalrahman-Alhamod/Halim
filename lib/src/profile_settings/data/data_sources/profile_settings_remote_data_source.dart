// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/data/sources/remote/services/api_services.dart';
import 'package:halim/core/functions/fake_delay.dart';
import 'package:halim/src/profile_settings/data/models/transaction_model.dart';

class ProfileSettingsRemoteDataSource {
  final ApiServices _apiServices;
  ProfileSettingsRemoteDataSource(this._apiServices);

  Future<BaseModel> getTransactions() async {
    final response = await _apiServices.get(
      AppUrl.transaction,
      hasToken: true,
    );
    await fakeDelay();
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => TransactionModel.fromJson(
          itemJson,
        ),
      ),
    );
  }
}
