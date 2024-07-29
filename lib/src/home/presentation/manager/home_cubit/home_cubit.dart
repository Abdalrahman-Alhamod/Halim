// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/home/domain/repos/home_repo.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  final HomeRepo _homeRepo;

  List<SubcategoryModel> subcategories = [];
  Future<void> getSubcategories({required int categoryId}) async {
    emit(
      const HomeState.fetchSubcategoriesLoading(),
    );
    final response = await _homeRepo.getSubcategories(categoryId);
    response.when(
      success: (data) {
        subcategories = List<SubcategoryModel>.from(data.data.list);
        emit(
          HomeState.fetchSubcategoriesSuccess(
            subcategories,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          HomeState.fetchSubcategoriesFailure(
            networkExceptions,
          ),
        );
      },
    );
  }
}
