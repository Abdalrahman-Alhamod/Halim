import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../../../../core/widgets/shimmer_box.dart';
import '../../../data/models/store_discount_model.dart';
import '../../../data/models/store_item_model.dart';
import '../../../domain/repos/store_repo.dart';
import '../../views/widgets/course_coupon_loading_list.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_loading_dialog.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../../data/models/student_points_model.dart';
import '../../views/widgets/functions/show_purchase_success.dart';

part 'store_state.dart';
part 'store_cubit.freezed.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit(this._storeRepo) : super(const StoreState.initial());
  final StoreRepo _storeRepo;

  String discountFilter = AppUrl.all;

  List<StoreDiscountModel> storeDiscounts = [];

  late final PagingAdapter<StoreDiscountModel> storeDiscountsPagingAdapter;

  List<StoreItemModel> storeItems = [];

  late final PagingAdapter<StoreItemModel> storeItemsPagingAdapter;

  void refreshStoreDiscounts() {
    storeDiscountsPagingAdapter.refresh();
  }

  void refreshStoreItems() {
    storeItemsPagingAdapter.refresh();
  }

  void init(BuildContext context) {
    storeDiscountsPagingAdapter = PagingAdapter(fetchItems: getStoreDiscounts);
    storeDiscountsPagingAdapter.init();
    storeDiscountsPagingAdapter.initPageRequestListener(
      context,
      storeDiscountsPagingAdapter.pagingController,
    );

    storeItemsPagingAdapter = PagingAdapter(fetchItems: getStoreItems);
    storeItemsPagingAdapter.init();
    storeItemsPagingAdapter.initPageRequestListener(
      context,
      storeItemsPagingAdapter.pagingController,
    );
  }

  Future<void> getStoreDiscounts(
    BuildContext context, {
    required int? pageKey,
  }) async {
    if ((pageKey ?? 1) == 1) storeDiscounts.clear();
    emit(
      const StoreState.fetchStoreDiscountsLoading(),
    );
    final response = await _storeRepo.getStoreDiscounts(
      pageKey: pageKey,
      filter: discountFilter,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        storeDiscounts.addAll(list.whereType());
        storeDiscountsPagingAdapter.handlePageData(
          baseModel: data,
          pageData: storeDiscounts,
          pageKey: pageKey,
          pagingController: storeDiscountsPagingAdapter.pagingController,
        );
        emit(
          StoreState.fetchStoreDiscountsSuccess(data.message),
        );
      },
      failure: (networkException) {
        storeDiscountsPagingAdapter.pagingController.error = networkException;
        emit(
          StoreState.fetchStoreDiscountsFailure(networkException),
        );
      },
    );
  }

  bool buildStoreDiscountsWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchStoreDiscountsLoading: () => true,
      fetchStoreDiscountsFailure: (_) => true,
      fetchStoreDiscountsSuccess: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildStoreDiscountsList(
    BuildContext context, {
    required PagingController<int, StoreDiscountModel> pagingController,
    required Widget Function(BuildContext, StoreDiscountModel, int) itemBuilder,
  }) =>
      storeDiscountsPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const CourseCouponLoadingList(),
      );

  bool listenStoreDiscountsWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchStoreDiscountsLoading: () => true,
      fetchStoreDiscountsFailure: (_) => true,
      fetchStoreDiscountsSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenStoreDiscounts(BuildContext context, StoreState state) {
    const title = 'Store Discounts';
    state.maybeWhen(
      fetchStoreDiscountsLoading: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchStoreDiscountsFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      fetchStoreDiscountsSuccess: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> getStoreItems(
    BuildContext context, {
    required int? pageKey,
  }) async {
    if ((pageKey ?? 1) == 1) storeItems.clear();
    emit(
      const StoreState.fetchStoreItemsLoading(),
    );
    final response = await _storeRepo.getStoreItems(
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        storeItems.addAll(list.whereType());
        storeItemsPagingAdapter.handlePageData(
          baseModel: data,
          pageData: storeItems,
          pageKey: pageKey,
          pagingController: storeItemsPagingAdapter.pagingController,
        );
        emit(
          StoreState.fetchStoreItemsSuccess(data.message),
        );
      },
      failure: (networkException) {
        storeItemsPagingAdapter.pagingController.error = networkException;
        emit(
          StoreState.fetchStoreItemsFailure(networkException),
        );
      },
    );
  }

  bool buildStoreItemsWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchStoreItemsLoading: () => true,
      fetchStoreItemsFailure: (_) => true,
      fetchStoreItemsSuccess: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildStoreItemsGridView(
    BuildContext context, {
    required PagingController<int, StoreItemModel> pagingController,
    required Widget Function(BuildContext, StoreItemModel, int) itemBuilder,
    required SliverGridDelegate gridDelegate,
  }) =>
      storeItemsPagingAdapter.buildGridView(
        context,
        pagingController,
        itemBuilder,
        gridDelegate: gridDelegate,
      );

  bool listenStoreItemsWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchStoreItemsLoading: () => true,
      fetchStoreItemsFailure: (_) => true,
      fetchStoreItemsSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenStoreItems(BuildContext context, StoreState state) {
    const title = 'Store Items';
    state.maybeWhen(
      fetchStoreItemsLoading: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchStoreItemsFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      fetchStoreItemsSuccess: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> purchaseItem({required int itemId, required String type}) async {
    emit(const StoreState.purchaseItemLoading());
    final response = await _storeRepo.purchaseItem(itemId: itemId);
    response.when(
      success: (data) {
        emit(
          StoreState.purchaseItemSuccess(type),
        );
      },
      failure: (networkException) {
        emit(
          StoreState.purchaseItemFailure(networkException),
        );
      },
    );
  }

  bool listenPurchaseItemWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      purchaseItemLoading: () => true,
      purchaseItemSuccess: (_) => true,
      purchaseItemFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenPurchaseItem(BuildContext context, StoreState state) {
    const title = 'Store Purchase Item';
    state.maybeWhen(
      purchaseItemLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      purchaseItemFailure: (NetworkExceptions? networkException) {
        context.pop();

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
      purchaseItemSuccess: (type) {
        context.pop();
        if (type == AppUrl.kDiscounts) {
          showPurchaseSuccess(
            context: context,
            message: LocaleKeys
                    .Achievements_Store_Dialog_youWillRecieveCouponNotification
                .tr(),
          );
        } else if (type == AppUrl.kItems) {
          showPurchaseSuccess(
            context: context,
            message: LocaleKeys
                .Achievements_Store_Dialog_getTheProductFromCenter.tr(),
          );
        }
        int studentId = context.read<AuthCubit>().user?.id ?? 0;
        context.read<StoreCubit>().getStudentPoints(studentId: studentId);

        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  StudentPointsModel? studentPointsModel;
  Future<void> getStudentPoints({
    required int studentId,
  }) async {
    emit(
      const StoreState.fetchStudentPointsLoading(),
    );
    final response = await _storeRepo.getStudentPoints(
      studentId: studentId,
    );
    response.when(
      success: (data) {
        studentPointsModel = data.data;
        emit(
          StoreState.fetchStudentPointsSuccess(
            studentPointsModel!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          StoreState.fetchStudentPointsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildStudentPointsWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchStudentPointsLoading: () => true,
      fetchStudentPointsFailure: (_) => true,
      fetchStudentPointsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildStudentPoints({
    required BuildContext context,
    required StoreState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchStudentPointsLoading: () => ShimmerBox(
        height: 26,
        width: context.width * 0.2,
      ),
      fetchStudentPointsSuccess: (_, __) => child,
      fetchStudentPointsFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenStudentPointsWhen(StoreState previous, StoreState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchStudentPointsLoading: () => true,
      fetchStudentPointsFailure: (_) => true,
      fetchStudentPointsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenStudentPoints(BuildContext context, StoreState state) {
    const title = 'Store Student Points';
    state.maybeWhen(
      fetchStudentPointsLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchStudentPointsFailure: (NetworkExceptions? networkException) {
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
      fetchStudentPointsSuccess: (
        StudentPointsModel studentPointsModel,
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
}
