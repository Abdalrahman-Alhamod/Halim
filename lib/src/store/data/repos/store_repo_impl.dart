// ignore_for_file: unused_field

import 'package:halim/src/store/data/data_sources/store_local_data_source.dart';
import 'package:halim/src/store/data/data_sources/store_remote_data_source.dart';
import 'package:halim/src/store/domain/repos/store_repo.dart';

class StoreRepoImpl extends StoreRepo {
  final StoreLocalDataSource _storeLocalDataSourcel;
  final StoreRemoteDataSource _storeRemoteDataSource;

  StoreRepoImpl(this._storeLocalDataSourcel, this._storeRemoteDataSource);
}
