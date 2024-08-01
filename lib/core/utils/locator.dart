import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:halim/src/auth/data/data_sources/auth_local_data_source.dart';
import 'package:halim/src/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:halim/src/auth/data/repos/auth_repo_impl.dart';
import 'package:halim/src/auth/domain/repos/auth_repo.dart';
import 'package:halim/src/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:halim/src/course_details/data/data_sources/course_details_local_data_source.dart';
import 'package:halim/src/course_details/data/data_sources/course_details_remote_data_source.dart';
import 'package:halim/src/course_details/data/repos/course_details_repo_impl.dart';
import 'package:halim/src/course_details/domain/repos/course_details_repo.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'package:halim/src/course_details/presentation/manager/reviews_cubit/reviews_cubit.dart';
import 'package:halim/src/home/data/data_sources/home_local_data_source.dart';
import 'package:halim/src/home/data/data_sources/home_remote_data_source.dart';
import 'package:halim/src/home/data/repos/home_repo_impl.dart';
import 'package:halim/src/home/domain/repos/home_repo.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:halim/src/search/data/data_sources/search_local_data_source.dart';
import 'package:halim/src/search/data/data_sources/search_remote_data_source.dart';
import 'package:halim/src/search/data/repos/search_repo_impl.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
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
    ),
  );

  /// Data Sources

  //Search
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
  // Home
  locator.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSource(),
  );
  locator.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );
  // Course Details
  locator.registerLazySingleton<CourseDetailsLocalDataSource>(
    () => CourseDetailsLocalDataSource(),
  );
  locator.registerLazySingleton<CourseDetailsRemoteDataSource>(
    () => CourseDetailsRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );

  /// Repositories

  // Search
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
  // Home
  locator.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      locator.get<HomeLocalDataSource>(),
      locator.get<HomeRemoteDataSource>(),
    ),
  );
  // Course Details
  locator.registerLazySingleton<CourseDetailsRepo>(
    () => CourseDetailsRepoImpl(
      locator.get<CourseDetailsLocalDataSource>(),
      locator.get<CourseDetailsRemoteDataSource>(),
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
  // Home
  locator.registerFactory<HomeCubit>(
    () => HomeCubit(
      locator.get<HomeRepo>(),
    ),
  );
  // Course Details
  locator.registerFactory<CourseDetailsCubit>(
    () => CourseDetailsCubit(
      locator.get<CourseDetailsRepo>(),
    ),
  );
  locator.registerFactory<ReviewsCubit>(
    () => ReviewsCubit(
      locator.get<CourseDetailsRepo>(),
    ),
  );
}
