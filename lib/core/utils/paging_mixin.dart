import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/custom_loading_indicator.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../data/model/base_model.dart';
import '../widgets/empty_view.dart';

typedef ItemBuilder<T> = Widget Function(BuildContext, T, int);

mixin PagingMixin<T> {
  // PagingController<int, T> pagingController = PagingController(firstPageKey: 1);
  static const _pageSize = 10;
  BaseModel? baseModel;

  Widget buildListView(BuildContext context,
      PagingController<int, T> pagingController, ItemBuilder<T> itemBuilder,
      {ScrollPhysics? physics,
      Axis scrollDirection = Axis.vertical,
      Widget? loadBuilder,
      Widget? noItemsFoundIndicatorBuilder}) {
    return PagedListView<int, T>(
      scrollDirection: scrollDirection,
      physics: physics,
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<T>(
        animateTransitions: true,
        transitionDuration: const Duration(milliseconds: 350),
        // TODO uncomment views
        // firstPageErrorIndicatorBuilder: (_) => ErrorView(),
        firstPageProgressIndicatorBuilder: (_) =>
            loadBuilder ?? const CustomLoadingIndicator(),
        newPageErrorIndicatorBuilder: null,
        newPageProgressIndicatorBuilder: (_) =>
            loadBuilder ?? const CustomLoadingIndicator(),
        noItemsFoundIndicatorBuilder: (_) =>
            noItemsFoundIndicatorBuilder ??  EmptyView(
          width: context.width * 0.85,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }

  Widget buildGridView(BuildContext context,
      PagingController<int, T> pagingController, ItemBuilder<T> itemBuilder,
      {ScrollPhysics? physics,
      Axis scrollDirection = Axis.vertical,
      Widget? loadBuilder,
      Widget? noItemsFoundIndicatorBuilder,required SliverGridDelegate gridDelegate}) {
    return PagedGridView<int, T>(
      scrollDirection: scrollDirection,
      physics: physics,
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<T>(
        animateTransitions: true,
        transitionDuration: const Duration(milliseconds: 350),
        // TODO uncomment views
        // firstPageErrorIndicatorBuilder: (_) => ErrorView(),
        firstPageProgressIndicatorBuilder: (_) =>
            loadBuilder ?? const CustomLoadingIndicator(),
        newPageErrorIndicatorBuilder: null,
        newPageProgressIndicatorBuilder: (_) =>
            loadBuilder ?? const CustomLoadingIndicator(),
        noItemsFoundIndicatorBuilder: (_) =>
            noItemsFoundIndicatorBuilder ??  EmptyView(
          width: context.width * 0.85,
        ),
        itemBuilder: itemBuilder,
        
      ),
      gridDelegate: gridDelegate,
    );
  }

  void changeBaseModel(BaseModel? baseModel) {
    this.baseModel = baseModel;
  }

  void initPageRequestListener(
      BuildContext context, PagingController<int, T> pagingController) {
    // ignore: invalid_use_of_protected_member
    if (!pagingController.hasListeners) {
      pagingController.addPageRequestListener((int? pageKey) async {
        await getItems(context, pageKey: pageKey);
      });
    }
  }

  Future<void> getItems(BuildContext context, {required int? pageKey});
  int? getNextPage() {
    if (baseModel == null) {
      return null;
    } else if (baseModel?.meta?.to == null ||
        baseModel?.meta?.to == baseModel?.meta?.total) {
      return null;
    }
    return (baseModel?.meta?.currentPage ?? 0) + 1;
  }

  void handlePageData(
      {required List<T> pageData,
      required BaseModel? baseModel,
      required int? pageKey,
      required PagingController<int, T> pagingController}) {
    this.baseModel = baseModel;
    final isLastPage = pageData.length < _pageSize;
    if (isLastPage) {
      pagingController.appendLastPage(pageData);
    } else {
      final nextPageKey = getNextPage();
      pagingController.appendPage(pageData, nextPageKey);
    }
  }
}
