import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/search/data/models/search_keyword_model.dart';
import 'package:halim/src/search/presentation/views/widgets/recent_search/recent_search_loading_items_list.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/logger.dart';
import '../../../domain/repos/search_repo.dart';

part 'search_keywords_state.dart';
part 'search_keywords_cubit.freezed.dart';

class SearchKeywordsCubit extends Cubit<SearchKeywordsState> {
  SearchKeywordsCubit(this._searchRepo)
      : super(const SearchKeywordsState.initial());
  final SearchRepo _searchRepo;
  List<SearchKeywordModel> searchKeywords = [];

  Future<void> getSearchKeywords() async {
    emit(
      const SearchKeywordsState.loading(),
    );
    final response = await _searchRepo.getSearchKeywords();
    response.when(
      success: (data) {
        searchKeywords = List<SearchKeywordModel>.from(data.data.list);

        searchKeywords.isEmpty
            ? emit(
                SearchKeywordsState.empty(data.message),
              )
            : emit(
                SearchKeywordsState.fetchSuccess(
                  searchKeywords,
                  data.message,
                ),
              );
      },
      failure: (networkExceptions) {
        emit(
          SearchKeywordsState.failure(
            networkExceptions,
          ),
        );
      },
    );
  }

  Future<void> deleteSearchKeyword({required int id}) async {
    emit(
      const SearchKeywordsState.loading(),
    );
    final response = await _searchRepo.deleteSearchKeyword(id);
    response.when(
      success: (data) {
        emit(
          SearchKeywordsState.deleteSuccess(
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          SearchKeywordsState.failure(
            networkExceptions,
          ),
        );
      },
    );
  }

  Future<void> deleteSearchKeywords() async {
    emit(
      const SearchKeywordsState.loading(),
    );
    final response = await _searchRepo.deleteSearchKeywords();
    response.when(
      success: (data) {
        emit(
          SearchKeywordsState.deleteSuccess(
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          SearchKeywordsState.failure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildWhen(SearchKeywordsState previous, SearchKeywordsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      empty: (_) => true,
      failure: (_) => true,
      fetchSuccess: (_, __) => true,
      deleteSuccess: (_) => true,
      orElse: () => false,
    );
  }

  bool listenWhen(SearchKeywordsState previous, SearchKeywordsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loading: () => true,
      failure: (_) => true,
      deleteSuccess: (_) => true,
      orElse: () => false,
    );
  }

  void listen(BuildContext context, SearchKeywordsState state) {
    const title = 'Search Keywords';
    state.maybeWhen(
      loading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      deleteSuccess: (message) {
        logger.print(
          '$title Deleted Successfully!',
          color: PrintColor.pink,
          title: '$title Delete Success',
        );

        getSearchKeywords();
      },
      orElse: () {},
    );
  }

  Widget build({
    required BuildContext context,
    required SearchKeywordsState state,
    required Widget child,
  }) {
    return state.when(
      loading: () {
        return const RecentSearchLoadingItemsList();
      },
      failure: (NetworkExceptions? networkException) {
        return const SizedBox();
      },
      empty: (message) {
        return const SizedBox();
      },
      deleteSuccess: (message) {
        return const SizedBox();
      },
      initial: () {
        return const RecentSearchLoadingItemsList();
      },
      fetchSuccess: (List<SearchKeywordModel> data, String? message) => child,
    );
  }
}
