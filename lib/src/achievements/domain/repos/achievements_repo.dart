import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';

abstract class AchievementsRepo {
  Future<ApiResponse<BaseModel>> getAchievementsBoard();
  Future<ApiResponse<BaseModel>> getAchievementsSummery();
  Future<ApiResponse<BaseModel>> getAvatars();
  Future<ApiResponse<BaseModel>> getBadges(String type);
}
