import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:halim/src/search/data/data_sources/search_local_data_source.dart';
import 'package:halim/src/search/data/data_sources/search_remote_data_source.dart';
import 'package:halim/src/search/data/repos/search_repo_impl.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';
import 'package:halim/src/search/presentation/manager/search_cubit.dart';

import '../data/sources/remote/services/api_services.dart';
import '../data/sources/remote/services/api_services_impl.dart';

final GetIt locator = GetIt.instance;
void setupLocators() {
  ///** Singelton **///

  /// Services
  locator.registerLazySingleton<Dio>(
    () => Dio(),
  );
  locator.registerLazySingleton<ApiServices>(
    () => ApiServicesImpl(
      locator.get<Dio>(),
      // locator()
    ),
  );

  /// Data Sources
  locator.registerLazySingleton<SearchLocalDataSource>(
    () => SearchLocalDataSource(),
  );
  locator.registerLazySingleton<SearchRemoteDateSource>(
    () => SearchRemoteDateSource(
      locator.get<ApiServices>(),
    ),
  );

  /// Repositories
  locator.registerLazySingleton<SearchRepo>(
    () => SearchRepoImpl(
      locator.get<SearchLocalDataSource>(),
      locator.get<SearchRemoteDateSource>(),
    ),
  );

  ///** Factory **///

  /// Cubits
  locator.registerFactory<SearchCubit>(
    () => SearchCubit(
      locator.get<SearchRepo>(),
    ),
  );
}
