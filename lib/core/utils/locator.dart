import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:halim/src/auth/data/data_sources/auth_local_data_source.dart';
import 'package:halim/src/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:halim/src/auth/data/repos/auth_repo_impl.dart';
import 'package:halim/src/auth/domain/repos/auth_repo.dart';
import 'package:halim/src/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:halim/src/search/data/data_sources/search_local_data_source.dart';
import 'package:halim/src/search/data/data_sources/search_remote_data_source.dart';
import 'package:halim/src/search/data/repos/search_repo_impl.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';
import 'package:halim/src/search/presentation/manager/search_cubit.dart';
import 'package:halim/src/search/presentation/manager/search_keywords_cubit/search_keywords_cubit.dart';

import '../../src/auth/presentation/manager/logout_cubit/logout_cubit.dart';
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
  // Auth
  locator.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSource(),
  );
  locator.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(
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
  // Auth
  locator.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      locator.get<AuthLocalDataSource>(),
      locator.get<AuthRemoteDataSource>(),
    ),
  );

  ///** Factory **///

  /// Cubits
  // Search
  locator.registerFactory<SearchKeywordsCubit>(
    () => SearchKeywordsCubit(
      locator.get<SearchRepo>(),
    ),
  );
  locator.registerFactory<SearchCubit>(
    () => SearchCubit(
      locator.get<SearchRepo>(),
    ),
  );
  // Auth
  locator.registerFactory<LoginCubit>(
    () => LoginCubit(
      locator.get<AuthRepo>(),
    ),
  );
  locator.registerFactory<LogoutCubit>(
    () => LogoutCubit(
      locator.get<AuthRepo>(),
    ),
  );
}
