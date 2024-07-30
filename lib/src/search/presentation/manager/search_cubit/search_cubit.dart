import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/mentor_card_loading_list.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';
import 'package:halim/src/search/presentation/views/widgets/filter/widgets/subcategories_buttons_loading_list.dart';
import 'package:halim/src/shared/app_data.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../../../home/presentation/views/widgets/card_course_loading_list.dart';
import '../../../../shared/model/category_model.dart';
import '../../../../shared/model/subcategory_model.dart';
import '../../../data/models/search_filter_model.dart';
import '../../../domain/entities/search_by.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(const SearchState.initial());
  final SearchRepo _searchRepo;

  String keyword = '';
  int resultsNumber = 0;
  String sortBy = 'most-relevent';
  SearchFilterModel filters = SearchFilterModel(
    category: getCategoryAll(),
    subcategory: getSubcategoryAll(),
    startDuation: 1,
    endDuration: 300,
    level: AppUrl.all,
    startPrice: 0,
    endPrice: 300,
    rating: AppUrl.all,
  );

  List<CourseCardModel> courses = [];
  List<SubcategoryModel> subcategories = [];
  List<CategoryModel> categories = [];
  SearchBy searchBy = SearchBy.courses;
  List<MentorCardModel> mentors = [];

  late final PagingAdapter<CourseCardModel> coursesPagingAdapter;
  late final PagingAdapter<MentorCardModel> mentorsPagingAdapter;

  void init(BuildContext context) {
    coursesPagingAdapter = PagingAdapter(fetchItems: searchCourse);
    coursesPagingAdapter.init();
    coursesPagingAdapter.initPageRequestListener(
      context,
      coursesPagingAdapter.pagingController,
    );

    mentorsPagingAdapter = PagingAdapter(fetchItems: searchMentors);
    mentorsPagingAdapter.init();
    mentorsPagingAdapter.initPageRequestListener(
      context,
      mentorsPagingAdapter.pagingController,
    );
  }

  void refresh() {
    switch (searchBy) {
      case SearchBy.courses:
        coursesPagingAdapter.refresh();
      case SearchBy.mentors:
        mentorsPagingAdapter.refresh();
    }
  }

  void setDefaultSortBy() {
    sortBy = 'most-relevent';
  }

  void changeSortBy() {
    emit(const SearchState.changeSortBy());
    refresh();
  }

  void fetchSubcategories() {
    if (filters.category.id == allId) {
      getSubcategories();
    } else {
      getSubcategories(categoryId: filters.category.id);
    }
  }

  void setDefaultFilters() {
    filters = SearchFilterModel(
      category: getCategoryAll(),
      subcategory: getSubcategoryAll(),
      startDuation: 1,
      endDuration: 300,
      level: AppUrl.all,
      startPrice: 0,
      endPrice: 300,
      rating: AppUrl.all,
    );
  }

  Future<void> searchCourse(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) courses.clear();
    emit(
      const SearchState.loadingPagination(),
    );
    final response = await _searchRepo.searchCourses(
      keyword: keyword,
      pageKey: pageKey,
      sortBy: sortBy,
      filters: filters,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        courses.addAll(list.whereType());
        resultsNumber = data.meta?.total ?? 0;
        coursesPagingAdapter.handlePageData(
          baseModel: data,
          pageData: courses,
          pageKey: pageKey,
          pagingController: coursesPagingAdapter.pagingController,
        );
        emit(
          SearchState.successPagination(data.message),
        );
      },
      failure: (networkException) {
        coursesPagingAdapter.pagingController.error = networkException;
        emit(
          SearchState.failurePagination(networkException),
        );
      },
    );
  }

  Future<void> searchMentors(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) mentors.clear();
    emit(
      const SearchState.loadingPagination(),
    );
    final response = await _searchRepo.searchMentors(
      keyword: keyword,
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        mentors.addAll(list.whereType());
        resultsNumber = data.meta?.total ?? 0;
        mentorsPagingAdapter.handlePageData(
          baseModel: data,
          pageData: mentors,
          pageKey: pageKey,
          pagingController: mentorsPagingAdapter.pagingController,
        );
        emit(
          SearchState.successPagination(data.message),
        );
      },
      failure: (networkException) {
        mentorsPagingAdapter.pagingController.error = networkException;
        emit(
          SearchState.failurePagination(networkException),
        );
      },
    );
  }

  Future<void> getSubcategories({int? categoryId}) async {
    emit(
      const SearchState.fetchSubcategoriesLoading(),
    );
    final response = await _searchRepo.getSubcategories(categoryId);
    response.when(
      success: (data) {
        subcategories = List<SubcategoryModel>.from(data.data.list);
        subcategories.insert(0, getSubcategoryAll());
        emit(
          SearchState.fetchSubcategoriesSuccess(
            subcategories,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          SearchState.fetchSubcategoriesFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  Future<void> getCategories() async {
    emit(
      const SearchState.fetchCategoriesLoading(),
    );
    final response = await _searchRepo.getCategories();
    response.when(
      success: (data) {
        categories = List<CategoryModel>.from(data.data.list);
        categories.insert(0, getCategoryAll());
        emit(
          SearchState.fetchCategoriesSuccess(
            categories,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          SearchState.fetchCategoriesFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildSearchResultsWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingPagination: () => true,
      successPagination: (_) => true,
      failurePagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildCoursesSearchResultsList(
    BuildContext context, {
    required PagingController<int, CourseCardModel> pagingController,
    required Widget Function(BuildContext, CourseCardModel, int) itemBuilder,
  }) =>
      coursesPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const CardCourseLoadList(),
      );

  Widget buildMentorsSearchResultsList(
    BuildContext context, {
    required PagingController<int, MentorCardModel> pagingController,
    required Widget Function(BuildContext, MentorCardModel, int) itemBuilder,
  }) =>
      mentorsPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const MentorCardLoadingList(),
      );

  bool listenWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      orElse: () => true,
    );
  }

  bool buildSearchResultsHeaderWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      successPagination: (_) => true,
      orElse: () => false,
    );
  }

  bool buildSubcategoriesWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchSubcategoriesLoading: () => true,
      fetchSubcategoriesFailure: (_) => true,
      fetchSubcategoriesSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildSubcategorie({
    required BuildContext context,
    required SearchState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchSubcategoriesLoading: () {
        return const SubcategoriesButtonsLoadingList();
      },
      fetchSubcategoriesSuccess: (courses, message) => child,
      fetchSubcategoriesFailure: (message) => const SizedBox(),
      orElse: () => const SubcategoriesButtonsLoadingList(),
    );
  }

  bool buildCategoriesWhen(SearchState previous, SearchState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCategoriesLoading: () => true,
      fetchCategoriesFailure: (_) => true,
      fetchCategoriesSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCategorie({
    required BuildContext context,
    required SearchState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCategoriesLoading: () {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const ShimmerBox(
            height: 32,
            width: 120,
          ),
        );
      },
      fetchCategoriesSuccess: (courses, message) => child,
      fetchCategoriesFailure: (message) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  listen(BuildContext context, SearchState state) {
    const title = 'Search';
    state.maybeWhen(
      loadingPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failurePagination: (NetworkExceptions? networkException) {
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
      successPagination: (String? message) {
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
