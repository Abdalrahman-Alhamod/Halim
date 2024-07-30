part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.changeSortBy() = _ChangeSortBy;

  const factory SearchState.loadingPagination() = _LoadingPagination;
  const factory SearchState.failurePagination(
      NetworkExceptions? networkException) = _FailurePagination;
  const factory SearchState.successPagination(String? message) =
      _SuccessPagination;

  const factory SearchState.fetchSubcategoriesLoading() =
      _FetchSubcategoriesLoading;
  const factory SearchState.fetchSubcategoriesFailure(
      NetworkExceptions? networkException) = _FetchSubcategoriesFailure;
  const factory SearchState.fetchSubcategoriesSuccess(
          List<SubcategoryModel> data, String? message) =
      _FetchSubcategoriesSuccess;

  const factory SearchState.fetchCategoriesLoading() = _FetchCategoriesLoading;
  const factory SearchState.fetchCategoriesFailure(
      NetworkExceptions? networkException) = _FetchCategoriesFailure;
  const factory SearchState.fetchCategoriesSuccess(
      List<CategoryModel> data, String? message) = _FetchCategoriesSuccess;
}
