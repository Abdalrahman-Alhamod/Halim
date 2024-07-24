part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.dispose() = _Dispose;
  const factory SearchState.save() = _Save;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.failure(NetworkExceptions? networkException) =
      _Failure;
  const factory SearchState.empty(String? message) = _Empty;
  // TODO Add success state with data
  const factory SearchState.success(dynamic data, String? message) = _Success;

  const factory SearchState.loadingPage() = _LoadingPage;
  const factory SearchState.failurePage(NetworkExceptions? networkException) =
      _FailurePage;
  // TODO Add success state with data
  const factory SearchState.successPage(dynamic data, String? message) =
      _SuccessPage;
  const factory SearchState.emptyPage(String? message) = _EmptyPage;

  const factory SearchState.loadingPagination() = _LoadingPagination;
  const factory SearchState.emptyPagination(String? message) = _EmptyPagination;
  const factory SearchState.failurePagination(
      NetworkExceptions? networkException) = _FailurePagination;
  // TODO Add success state with data
  const factory SearchState.successPagination(dynamic data, String? message) =
      _SuccessPagination;

  const factory SearchState.loadingFirst() = _LoadingFirst;
  const factory SearchState.emptyFirst(String? message) = _EmptyFirst;
  const factory SearchState.failureFirst(NetworkExceptions? networkException) =
      _FailureFirst;
  // TODO Add success state with data
  const factory SearchState.successFirst(dynamic data, String? message) =
      _SuccessFirst;
}
