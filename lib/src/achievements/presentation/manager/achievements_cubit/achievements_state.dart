part of 'achievements_cubit.dart';

@freezed
class AchievementsState with _$AchievementsState {
  const factory AchievementsState.initial() = _Initial;

  const factory AchievementsState.fetchAchievemenetsBoardLoading() =
      _FetchAchievemenetsBoardLoading;
  const factory AchievementsState.fetchAchievemenetsBoardFailure(
      NetworkExceptions? networkException) = _FetchAchievemenetsBoardFailure;
  const factory AchievementsState.fetchAchievemenetsBoardSuccess(
          AchievementsBoardModel data, String? message) =
      _FetchAchievemenetsBoardSuccess;

  const factory AchievementsState.fetchAchievemenetsSummeryLoading() =
      _FetchAchievemenetsSummeryLoading;
  const factory AchievementsState.fetchAchievemenetsSummeryFailure(
      NetworkExceptions? networkException) = _FetchAchievemenetsSummeryFailure;
  const factory AchievementsState.fetchAchievemenetsSummerySuccess(
          AchievementsSummeryModel data, String? message) =
      _FetchAchievemenetsSummerySuccess;

  const factory AchievementsState.fetchAvatarsLoading() = _FetchAvatarsLoading;
  const factory AchievementsState.fetchAvatarsFailure(
      NetworkExceptions? networkException) = _FetchAvatarsFailure;
  const factory AchievementsState.fetchAvatarsSuccess(
      List<AvatarModel> data, String? message) = _FetchAvatarsSuccess;

  const factory AchievementsState.fetchBadgesLoading(String type) = _FetchBadgesLoading;
  const factory AchievementsState.fetchBadgesFailure(
      NetworkExceptions? networkException,String type) = _FetchBadgesFailure;
  const factory AchievementsState.fetchBadgesSuccess(
      List<BadgeModel> data, String type) = _FetchBadgesSuccess;
}
