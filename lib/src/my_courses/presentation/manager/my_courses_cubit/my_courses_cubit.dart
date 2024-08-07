// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/core/utils/pagination_adapter.dart';
import 'package:halim/src/home/presentation/views/widgets/card_course_loading_list.dart';
import 'package:halim/src/my_courses/data/models/my_course_card_model.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/logger.dart';
import '../../../domain/repos/my_courses_repo.dart';
import '../../views/widget/my_course_card_loading_list.dart';

part 'my_courses_state.dart';
part 'my_courses_cubit.freezed.dart';

class MyCoursesCubit extends Cubit<MyCoursesState> {
  MyCoursesCubit(this._myCoursesRepo) : super(const MyCoursesState.initial());
  final MyCoursesRepo _myCoursesRepo;

  List<MyCourseCardModel> ongoingCourses = [];
  List<MyCourseCardModel> completedCourses = [];
  List<CourseCardModel> savedCourses = [];

  late final PagingAdapter<MyCourseCardModel> ongoingCoursesPagingAdapter;
  late final PagingAdapter<MyCourseCardModel> completedCoursesPagingAdapter;
  late final PagingAdapter<CourseCardModel> savedCoursesPagingAdapter;

  void refreshOngoingCourses() {
    ongoingCoursesPagingAdapter.refresh();
  }

  void refreshCompletedCourses() {
    completedCoursesPagingAdapter.refresh();
  }

  void refreshSavedCourses() {
    savedCoursesPagingAdapter.refresh();
  }

  void init(BuildContext context) {
    ongoingCoursesPagingAdapter = PagingAdapter(fetchItems: getOngoingCourses);
    ongoingCoursesPagingAdapter.init();
    ongoingCoursesPagingAdapter.initPageRequestListener(
      context,
      ongoingCoursesPagingAdapter.pagingController,
    );

    completedCoursesPagingAdapter =
        PagingAdapter(fetchItems: getCompletedCourses);
    completedCoursesPagingAdapter.init();
    completedCoursesPagingAdapter.initPageRequestListener(
      context,
      completedCoursesPagingAdapter.pagingController,
    );

    savedCoursesPagingAdapter = PagingAdapter(fetchItems: getSavedCourses);
    savedCoursesPagingAdapter.init();
    savedCoursesPagingAdapter.initPageRequestListener(
      context,
      savedCoursesPagingAdapter.pagingController,
    );
  }

  Future<void> getOngoingCourses(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) ongoingCourses.clear();
    emit(
      const MyCoursesState.loadingOngoingCoursesPagination(),
    );
    final response = await _myCoursesRepo.getOngoingCourses(
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        ongoingCourses.addAll(list.whereType());
        ongoingCoursesPagingAdapter.handlePageData(
          baseModel: data,
          pageData: ongoingCourses,
          pageKey: pageKey,
          pagingController: ongoingCoursesPagingAdapter.pagingController,
        );
        emit(
          MyCoursesState.successOngoingCoursesPagination(data.message),
        );
      },
      failure: (networkException) {
        ongoingCoursesPagingAdapter.pagingController.error = networkException;
        emit(
          MyCoursesState.failureOngoingCoursesPagination(networkException),
        );
      },
    );
  }

  bool buildOngoingCoursesListWhen(
      MyCoursesState previous, MyCoursesState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingOngoingCoursesPagination: () => true,
      successOngoingCoursesPagination: (_) => true,
      failureOngoingCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildOngoingCoursesList(
    BuildContext context, {
    required PagingController<int, MyCourseCardModel> pagingController,
    required Widget Function(BuildContext, MyCourseCardModel, int) itemBuilder,
  }) =>
      ongoingCoursesPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const MyCourseCardLoadingList(),
      );

  bool listenOngoingCoursesWhen(
      MyCoursesState previous, MyCoursesState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingOngoingCoursesPagination: () => true,
      failureOngoingCoursesPagination: (_) => true,
      successOngoingCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  listenOngoingCourses(BuildContext context, MyCoursesState state) {
    const title = 'Ongoing Courses';
    state.maybeWhen(
      loadingOngoingCoursesPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failureOngoingCoursesPagination: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      successOngoingCoursesPagination: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> getCompletedCourses(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) completedCourses.clear();
    emit(
      const MyCoursesState.loadingCompletedCoursesPagination(),
    );
    final response = await _myCoursesRepo.getCompletedCourses(
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        completedCourses.addAll(list.whereType());
        completedCoursesPagingAdapter.handlePageData(
          baseModel: data,
          pageData: completedCourses,
          pageKey: pageKey,
          pagingController: completedCoursesPagingAdapter.pagingController,
        );
        emit(
          MyCoursesState.successCompletedCoursesPagination(data.message),
        );
      },
      failure: (networkException) {
        completedCoursesPagingAdapter.pagingController.error = networkException;
        emit(
          MyCoursesState.failureCompletedCoursesPagination(networkException),
        );
      },
    );
  }

  bool buildCompletedCoursesListWhen(
      MyCoursesState previous, MyCoursesState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingCompletedCoursesPagination: () => true,
      successCompletedCoursesPagination: (_) => true,
      failureCompletedCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildCompletedCoursesList(
    BuildContext context, {
    required PagingController<int, MyCourseCardModel> pagingController,
    required Widget Function(BuildContext, MyCourseCardModel, int) itemBuilder,
  }) =>
      completedCoursesPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const MyCourseCardLoadingList(),
      );

  bool listenCompletedCoursesWhen(
      MyCoursesState previous, MyCoursesState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingCompletedCoursesPagination: () => true,
      failureCompletedCoursesPagination: (_) => true,
      successCompletedCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  listenCompletedCourses(BuildContext context, MyCoursesState state) {
    const title = 'Completed Courses';
    state.maybeWhen(
      loadingCompletedCoursesPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failureCompletedCoursesPagination: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      successCompletedCoursesPagination: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> getSavedCourses(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) savedCourses.clear();
    emit(
      const MyCoursesState.loadingSavedCoursesPagination(),
    );
    final response = await _myCoursesRepo.getSavedCourses(
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        savedCourses.addAll(list.whereType());
        savedCoursesPagingAdapter.handlePageData(
          baseModel: data,
          pageData: savedCourses,
          pageKey: pageKey,
          pagingController: savedCoursesPagingAdapter.pagingController,
        );
        emit(
          MyCoursesState.successSavedCoursesPagination(data.message),
        );
      },
      failure: (networkException) {
        savedCoursesPagingAdapter.pagingController.error = networkException;
        emit(
          MyCoursesState.failureSavedCoursesPagination(networkException),
        );
      },
    );
  }

  bool buildSavedCoursesListWhen(
      MyCoursesState previous, MyCoursesState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingSavedCoursesPagination: () => true,
      successSavedCoursesPagination: (_) => true,
      failureSavedCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildSavedCoursesList(
    BuildContext context, {
    required PagingController<int, CourseCardModel> pagingController,
    required Widget Function(BuildContext, CourseCardModel, int) itemBuilder,
  }) =>
      savedCoursesPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const CardCourseLoadList(),
      );

  bool listenSavedCoursesWhen(MyCoursesState previous, MyCoursesState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingSavedCoursesPagination: () => true,
      failureSavedCoursesPagination: (_) => true,
      successSavedCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  listenSavedCourses(BuildContext context, MyCoursesState state) {
    const title = 'Saved Courses';
    state.maybeWhen(
      loadingSavedCoursesPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failureSavedCoursesPagination: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      successSavedCoursesPagination: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }
}
