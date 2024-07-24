import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';
import 'package:halim/src/shared/entity/test_user_entity.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../core/functions/show_toast.dart';
import '../../../../core/functions/toast_status.dart';
import '../../../../core/utils/logger.dart';
import '../../../../core/utils/pagination_adapter.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(const SearchState.initial());
  final SearchRepo _searchRepo;

  dynamic someData;

  List<TestUserEntity> users = [];

  late final PagingAdapter<TestUserEntity> pagingAdapter;
  void init(BuildContext context) {
    pagingAdapter = PagingAdapter(fetchItems: getPages);
    pagingAdapter.init();
    pagingAdapter.initPageRequestListener(
      context,
      pagingAdapter.pagingController,
    );
  }

  Future<void> get() async {
    emit(
      const SearchState.loading(),
    );
    final response = await _searchRepo.get();
    response.when(
      success: (data) {
        someData = data.data;
        emit(
          SearchState.success(
            someData,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          SearchState.failure(
            networkExceptions,
          ),
        );
      },
    );
  }

  Future<void> getPages(BuildContext context, {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) users.clear();
    emit(
      const SearchState.loadingPagination(),
    );
    // TODO implement getPages in repos and data sources
    final response = await _searchRepo.get();
    response.when(
      success: (data) async {
        List list = data.data.list;
        users.addAll(list.whereType());
        pagingAdapter.handlePageData(
          baseModel: data,
          pageData: users,
          pageKey: pageKey,
          pagingController: pagingAdapter.pagingController,
        );
        emit(
          SearchState.successPagination(null, data.message),
        );
      },
      failure: (networkException) {
        pagingAdapter.pagingController.error = networkException;
        emit(
          SearchState.failurePagination(networkException),
        );
      },
    );
  }

  bool buildWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      empty: (_) => true,
      success: (_, __) => true,
      failure: (_) => true,
      orElse: () => false,
    );
  }

  bool buildFirstWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingFirst: () => true,
      emptyFirst: (_) => true,
      successFirst: (_, __) => true,
      successPagination: (_, __) => true,
      failureFirst: (_) => true,
      orElse: () => false,
    );
  }

  bool buildPageWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingPage: () => true,
      emptyPage: (_) => true,
      successPage: (_, __) => true,
      failurePage: (_) => true,
      orElse: () => false,
    );
  }

  bool listenWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      empty: (_) => true,
      success: (_, __) => true,
      failure: (_) => true,
      // TODO Test listening on all states
      // orElse: () => false,
      orElse: () => true,
    );
  }

  listen(BuildContext context, SearchState state) {
    const title = 'Search';
    state.when(
      initial: () {},
      dispose: () {},
      save: () {},
      loading: () {},
      failure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: networkException.toString(),
          title: '$title Error',
          status: ToastStatus.failure,
        );
        logger.print(
          networkException,
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      empty: (message) {
        showTOAST(
          context,
          // textToast: title,
          title: '$title no results',
        );
        logger.print(
          message,
          color: PrintColor.orange,
          title: '$title Empty',
        );
      },
      success: (data, message) {
        showTOAST(
          context,
          textToast: message,
          title: '$title Success',
          status: ToastStatus.success,
        );

        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      loadingPage: () {},
      failurePage: (NetworkExceptions? networkException) {
        logger.print(
          networkException,
          color: PrintColor.red,
          title: '$title Page Error',
        );
      },
      successPage: (data, String? message) {
        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Page Success',
        );
      },
      emptyPage: (String? message) {
        logger.print(
          message,
          color: PrintColor.orange,
          title: '$title Empty Page',
        );
      },
      loadingPagination: () {},
      emptyPagination: (String? message) {
        logger.print(
          message,
          color: PrintColor.orange,
          title: '$title Empty Pagination',
        );
      },
      failurePagination: (NetworkExceptions? networkException) {
        logger.print(
          networkException,
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      successPagination: (data, String? message) {
        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      loadingFirst: () {},
      emptyFirst: (String? message) {
        logger.print(
          message,
          color: PrintColor.orange,
          title: '$title Empty First',
        );
      },
      failureFirst: (NetworkExceptions? networkException) {
        logger.print(
          networkException,
          color: PrintColor.red,
          title: '$title First Error',
        );
      },
      successFirst: (data, String? message) {
        logger.print(
          data,
          color: PrintColor.pink,
          title: '$title First Success',
        );
      },
    );
  }
  // TODO make widget build
  // TODO make page build
  // TODO make first build
}
