// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/achievements/data/models/achievements_board_model.dart';
import 'package:halim/src/achievements/data/models/achievements_summery_model.dart';
import 'package:halim/src/achievements/data/models/avatar_model.dart';
import 'package:halim/src/achievements/domain/repos/achievements_repo.dart';
import 'package:halim/src/achievements/presentation/views/widgets/achievements_board_loading.dart';
import 'package:halim/src/achievements/presentation/views/widgets/achievements_sections/summery_section_loading.dart';
import 'package:halim/src/achievements/presentation/views/widgets/static_badges_grid_loading.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/logger.dart';
import '../../../data/models/badge_model.dart';
import '../../views/widgets/tracked_badges_list_loading.dart';

part 'achievements_state.dart';
part 'achievements_cubit.freezed.dart';

class AchievementsCubit extends Cubit<AchievementsState> {
  AchievementsCubit(this._achievementsRepo)
      : super(
          const AchievementsState.initial(),
        );
  final AchievementsRepo _achievementsRepo;

   Future<void> refreshAchievements() async {
    await Future.wait([
      getAchievementsBoard(),
      getAchievementsSummery(),
      getAvatars(),
      getFirstTimeBadges(),
      getCoursesAttendedBadges(),
      getCommunityBadges(),
      getHoursBadges(),
    ]);
  }

  AchievementsBoardModel? achievementsBoardModel;
  Future<void> getAchievementsBoard() async {
    emit(
      const AchievementsState.fetchAchievemenetsBoardLoading(),
    );
    final response = await _achievementsRepo.getAchievementsBoard();
    response.when(
      success: (data) {
        achievementsBoardModel = data.data;
        emit(
          AchievementsState.fetchAchievemenetsBoardSuccess(
            achievementsBoardModel!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchAchievemenetsBoardFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildAchievementsBoardWhen(
      AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchAchievemenetsBoardLoading: () => true,
      fetchAchievemenetsBoardFailure: (_) => true,
      fetchAchievemenetsBoardSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildAchievementsBoard({
    required BuildContext context,
    required AchievementsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchAchievemenetsBoardLoading: () => const AchievementsBoardLoading(),
      fetchAchievemenetsBoardSuccess: (_, __) => child,
      fetchAchievemenetsBoardFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenAchievementsBoardWhen(
      AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchAchievemenetsBoardLoading: () => true,
      fetchAchievemenetsBoardFailure: (_) => true,
      fetchAchievemenetsBoardSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenAchievementsBoard(BuildContext context, AchievementsState state) {
    const title = 'Achievements Board';
    state.maybeWhen(
      fetchAchievemenetsBoardLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchAchievemenetsBoardFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchAchievemenetsBoardSuccess: (
        AchievementsBoardModel data,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  AchievementsSummeryModel? achievementsSummeryModel;
  Future<void> getAchievementsSummery() async {
    emit(
      const AchievementsState.fetchAchievemenetsSummeryLoading(),
    );
    final response = await _achievementsRepo.getAchievementsSummery();
    response.when(
      success: (data) {
        achievementsSummeryModel = data.data;
        emit(
          AchievementsState.fetchAchievemenetsSummerySuccess(
            achievementsSummeryModel!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchAchievemenetsSummeryFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildAchievementsSummeryWhen(
      AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchAchievemenetsSummeryLoading: () => true,
      fetchAchievemenetsSummeryFailure: (_) => true,
      fetchAchievemenetsSummerySuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildAchievementsSummery({
    required BuildContext context,
    required AchievementsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchAchievemenetsSummeryLoading: () => const SummerySectionLoading(),
      fetchAchievemenetsSummerySuccess: (_, __) => child,
      fetchAchievemenetsSummeryFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenAchievementsSummeryWhen(
      AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchAchievemenetsSummeryLoading: () => true,
      fetchAchievemenetsSummeryFailure: (_) => true,
      fetchAchievemenetsSummerySuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenAchievementsSummery(BuildContext context, AchievementsState state) {
    const title = 'Achievements Summery';
    state.maybeWhen(
      fetchAchievemenetsSummeryLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchAchievemenetsSummeryFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchAchievemenetsSummerySuccess: (
        AchievementsSummeryModel data,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  List<AvatarModel>? avatars;
  Future<void> getAvatars() async {
    emit(
      const AchievementsState.fetchAvatarsLoading(),
    );
    final response = await _achievementsRepo.getAvatars();
    response.when(
      success: (data) {
        avatars = List<AvatarModel>.from(data.data.list);
        emit(
          AchievementsState.fetchAvatarsSuccess(
            avatars!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchAvatarsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildAvatarsWhen(AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchAvatarsLoading: () => true,
      fetchAvatarsFailure: (_) => true,
      fetchAvatarsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildAvatars({
    required BuildContext context,
    required AchievementsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchAvatarsLoading: () => const TrackedBadgesListLoading(),
      fetchAvatarsSuccess: (_, __) => child,
      fetchAvatarsFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  bool listenAvatarsWhen(
      AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchAvatarsLoading: () => true,
      fetchAvatarsFailure: (_) => true,
      fetchAvatarsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenAvatars(BuildContext context, AchievementsState state) {
    const title = 'Avatars';
    state.maybeWhen(
      fetchAvatarsLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchAvatarsFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchAvatarsSuccess: (
        List<AvatarModel> data,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  List<BadgeModel>? firstTimeBadges;
  Future<void> getFirstTimeBadges() async {
    const type = AppUrl.kFirstTime;
    emit(
      const AchievementsState.fetchBadgesLoading(type),
    );
    final response = await _achievementsRepo.getBadges(type);
    response.when(
      success: (data) {
        firstTimeBadges = List<BadgeModel>.from(data.data.list);
        emit(
          AchievementsState.fetchBadgesSuccess(
            firstTimeBadges!,
            type,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchBadgesFailure(
            networkExceptions,
            type,
          ),
        );
      },
    );
  }

  List<BadgeModel>? coursesAttendedBadges;
  Future<void> getCoursesAttendedBadges() async {
    const type = AppUrl.kCourses;
    emit(
      const AchievementsState.fetchBadgesLoading(type),
    );
    final response = await _achievementsRepo.getBadges(type);
    response.when(
      success: (data) {
        coursesAttendedBadges = List<BadgeModel>.from(data.data.list);
        emit(
          AchievementsState.fetchBadgesSuccess(
            coursesAttendedBadges!,
            type,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchBadgesFailure(
            networkExceptions,
            type,
          ),
        );
      },
    );
  }

  List<BadgeModel>? communityBadges;
  Future<void> getCommunityBadges() async {
    const type = AppUrl.kContributions;
    emit(
      const AchievementsState.fetchBadgesLoading(type),
    );
    final response = await _achievementsRepo.getBadges(type);
    response.when(
      success: (data) {
        communityBadges = List<BadgeModel>.from(data.data.list);
        emit(
          AchievementsState.fetchBadgesSuccess(
            communityBadges!,
            type,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchBadgesFailure(
            networkExceptions,
            type,
          ),
        );
      },
    );
  }

  List<BadgeModel>? hoursBadges;
  Future<void> getHoursBadges() async {
    const type = AppUrl.kHours;
    emit(
      const AchievementsState.fetchBadgesLoading(type),
    );
    final response = await _achievementsRepo.getBadges(type);
    response.when(
      success: (data) {
        hoursBadges = List<BadgeModel>.from(data.data.list);
        emit(
          AchievementsState.fetchBadgesSuccess(
            hoursBadges!,
            type,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          AchievementsState.fetchBadgesFailure(
            networkExceptions,
            type,
          ),
        );
      },
    );
  }

  bool buildBadgesWhen(AchievementsState previous, AchievementsState current,
      String badgesType) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchBadgesLoading: (type) => type == badgesType,
      fetchBadgesFailure: (_, type) => type == badgesType,
      fetchBadgesSuccess: (_, type) => type == badgesType,
      orElse: () => false,
    );
  }

  Widget buildBadges({
    required BuildContext context,
    required AchievementsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchBadgesLoading: (_) => const TrackedBadgesListLoading(),
      orElse: () => child,
    );
  }

  Widget buildFirstTimeBadges({
    required BuildContext context,
    required AchievementsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchBadgesLoading: (_) => const StaticBadgesGridLoading(),
      orElse: () => child,
    );
  }

  bool listenBadgesWhen(AchievementsState previous, AchievementsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchBadgesLoading: (_) => true,
      fetchBadgesFailure: (_, __) => true,
      fetchBadgesSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenBadges(BuildContext context, AchievementsState state) {
    const title = 'Badges';
    state.maybeWhen(
      fetchBadgesLoading: (type) {
        logger.print(
          'Loading $type...',
          color: PrintColor.orange,
          title: '$title $type Loading',
        );
      },
      fetchBadgesFailure: (NetworkExceptions? networkException, type) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title $type Error',
        );
      },
      fetchBadgesSuccess: (
        List<BadgeModel> data,
        String type,
      ) {
        logger.print(
          '$title$type  Success',
          color: PrintColor.pink,
          title: '$title $type Success',
        );
      },
      orElse: () {},
    );
  }
}
