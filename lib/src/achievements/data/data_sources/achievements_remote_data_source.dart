// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/data/sources/remote/services/api_services.dart';
import 'package:halim/src/achievements/data/models/achievements_board_model.dart';
import 'package:halim/src/achievements/data/models/achievements_summery_model.dart';
import 'package:halim/src/achievements/data/models/avatar_model.dart';
import 'package:halim/src/achievements/data/models/badge_model.dart';

import '../../../../core/data/model/base_model.dart';

class AchievementsRemoteDataSource {
  final ApiServices _apiServices;

  AchievementsRemoteDataSource(this._apiServices);

  Future<BaseModel> getAchievementsBoard() async {
    final response = await _apiServices.get(
      AppUrl.achievementsBoard,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => AchievementsBoardModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> getAchievementsSummery() async {
    final response = await _apiServices.get(
      AppUrl.achievementsSummery,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => AchievementsSummeryModel.fromJson(
        json,
      ),
    );
  }

  Future<BaseModel> getAvatars() async {
    final response = await _apiServices.get(
      AppUrl.avatars,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => AvatarModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getBadges(String type) async {
    Map<String, String> queryParams = {
      AppUrl.kType: type,
    };
    final response = await _apiServices.get(
      AppUrl.badges,
      queryParams: queryParams,
      hasToken: true,
    );
    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => BadgeModel.fromJson(
          itemJson,
        ),
      ),
    );
  }
}
