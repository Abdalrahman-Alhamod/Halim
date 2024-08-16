part of 'store_cubit.dart';

@freezed
class StoreState with _$StoreState {
  const factory StoreState.initial() = _Initial;

  const factory StoreState.fetchStoreDiscountsLoading() =
      _FetchStoreDiscountsLoading;
  const factory StoreState.fetchStoreDiscountsFailure(
      NetworkExceptions? networkException) = _FetchStoreDiscountsFailure;
  const factory StoreState.fetchStoreDiscountsSuccess(String? message) =
      _FetchStoreDiscountsSuccess;

  const factory StoreState.fetchStoreItemsLoading() = _FetchStoreItemsLoading;
  const factory StoreState.fetchStoreItemsFailure(
      NetworkExceptions? networkException) = _FetchStoreItemsFailure;
  const factory StoreState.fetchStoreItemsSuccess(String? message) =
      _FetchStoreItemsSuccess;

  const factory StoreState.purchaseItemLoading() = _PurchaseItemLoading;
  const factory StoreState.purchaseItemFailure(
      NetworkExceptions? networkException) = _PurchaseItemFailure;
  const factory StoreState.purchaseItemSuccess(String type) =
      _PurchaseItemSuccess;

        const factory StoreState.fetchStudentPointsLoading() = _FetchStudentPointsLoading;
  const factory StoreState.fetchStudentPointsFailure(
      NetworkExceptions? networkException) = _FetchStudentPointsFailure;
  const factory StoreState.fetchStudentPointsSuccess(StudentPointsModel studentPointsModel,String? message) =
      _FetchStudentPointsSuccess;
}
