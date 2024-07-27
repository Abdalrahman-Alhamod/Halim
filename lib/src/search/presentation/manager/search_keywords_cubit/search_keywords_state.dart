part of 'search_keywords_cubit.dart';

@freezed
class SearchKeywordsState with _$SearchKeywordsState {
  const factory SearchKeywordsState.initial() = _Initial;
  const factory SearchKeywordsState.loading() = _Loading;
  const factory SearchKeywordsState.failure(
      NetworkExceptions? networkException) = _Failure;
  const factory SearchKeywordsState.empty(String? message) = _Empty;
  const factory SearchKeywordsState.fetchSuccess(
      List<SearchKeywordEntity> data, String? message) = _FetchSuccess;
  const factory SearchKeywordsState.deleteSuccess(String? message) =
      _DeleteSuccess;
}
