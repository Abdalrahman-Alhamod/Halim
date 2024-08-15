// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/store/domain/repos/store_repo.dart';

part 'store_state.dart';
part 'store_cubit.freezed.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit(this._storeRepo) : super(const StoreState.initial());
  final StoreRepo _storeRepo;
}
