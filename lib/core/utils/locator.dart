import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:halim/core/data/sources/remote/services/web_socket_service.dart';
import 'package:halim/core/data/sources/remote/services/web_socket_service_impl.dart';
import 'package:halim/src/account_setup/data/data_sources/account_setup_local_data_source.dart';
import 'package:halim/src/account_setup/data/data_sources/account_setup_remote_data_source.dart';
import 'package:halim/src/account_setup/data/repos/account_setup_impl.dart';
import 'package:halim/src/account_setup/domain/repos/account_setup_repo.dart';
import 'package:halim/src/account_setup/presentation/manager/account_setup_cubit/account_setup_cubit.dart';
import 'package:halim/src/achievements/data/data_sources/achievements_local_data_source.dart';
import 'package:halim/src/achievements/data/data_sources/achievements_remote_data_source.dart';
import 'package:halim/src/achievements/data/repos/achievements_repo_impl.dart';
import 'package:halim/src/achievements/domain/repos/achievements_repo.dart';
import 'package:halim/src/achievements/presentation/manager/achievements_cubit/achievements_cubit.dart';
import 'package:halim/src/auth/data/data_sources/auth_local_data_source.dart';
import 'package:halim/src/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:halim/src/auth/data/repos/auth_repo_impl.dart';
import 'package:halim/src/auth/domain/repos/auth_repo.dart';
import 'package:halim/src/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:halim/src/chat/data/data_sources/chat_local_data_source.dart';
import 'package:halim/src/chat/data/data_sources/chat_remote_data_source.dart';
import 'package:halim/src/chat/data/repos/chat_repo_impl.dart';
import 'package:halim/src/chat/domain/repos/chat_repo.dart';
import 'package:halim/src/chat/presentation/manager/chat_cubit/chat_cubit.dart';
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
import 'package:halim/src/mentor_details/data/data_sources/mentor_details_local_data_source.dart';
import 'package:halim/src/mentor_details/data/data_sources/mentor_details_remote_data_source.dart';
import 'package:halim/src/mentor_details/data/repos/mentor_details_repo_impl.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';
import 'package:halim/src/my_courses/data/data_sources/my_courses_local_data_source.dart';
import 'package:halim/src/my_courses/data/data_sources/my_courses_remote_data_source.dart';
import 'package:halim/src/my_courses/data/repos/my_courses_repo_impl.dart';
import 'package:halim/src/my_courses/domain/repos/my_courses_repo.dart';
import 'package:halim/src/my_courses/presentation/manager/my_courses_cubit/my_courses_cubit.dart';
import 'package:halim/src/profile_settings/data/data_sources/profile_settings_local_data_source.dart';
import 'package:halim/src/profile_settings/data/data_sources/profile_settings_remote_data_source.dart';
import 'package:halim/src/profile_settings/data/repos/profile_settings_repo_impl.dart';
import 'package:halim/src/profile_settings/domain/repos/profile_settings_repo.dart';
import 'package:halim/src/profile_settings/presentation/manager/cubit/profile_settings_cubit.dart';
import 'package:halim/src/search/data/data_sources/search_local_data_source.dart';
import 'package:halim/src/search/data/data_sources/search_remote_data_source.dart';
import 'package:halim/src/search/data/repos/search_repo_impl.dart';
import 'package:halim/src/search/domain/repos/search_repo.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:halim/src/search/presentation/manager/search_keywords_cubit/search_keywords_cubit.dart';
import 'package:halim/src/store/data/data_sources/store_local_data_source.dart';
import 'package:halim/src/store/data/data_sources/store_remote_data_source.dart';
import 'package:halim/src/store/data/repos/store_repo_impl.dart';
import 'package:halim/src/store/domain/repos/store_repo.dart';
import 'package:halim/src/store/presentation/manager/store_cubit/store_cubit.dart';

import '../../src/mentor_details/domain/repos/mentor_details_repo.dart';
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
  locator.registerLazySingleton<WebSocketServices>(
    () => WebSocketServicesImpl(),
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
  // Mentor Details
  locator.registerLazySingleton<MentorDetailsLocalDataSource>(
    () => MentorDetailsLocalDataSource(),
  );
  locator.registerLazySingleton<MentorDetailsRemoteDataSource>(
    () => MentorDetailsRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );
  // Profile Settings
  locator.registerLazySingleton<ProfileSettingsLocalDataSource>(
    () => ProfileSettingsLocalDataSource(),
  );
  locator.registerLazySingleton<ProfileSettingsRemoteDataSource>(
    () => ProfileSettingsRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );
  // Account Setup
  locator.registerLazySingleton<AccountSetupLocalDataSource>(
    () => AccountSetupLocalDataSource(),
  );
  locator.registerLazySingleton<AccountSetupRemoteDataSource>(
    () => AccountSetupRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );
  // My Courses
  locator.registerLazySingleton<MyCoursesLocalDataSource>(
    () => MyCoursesLocalDataSource(),
  );
  locator.registerLazySingleton<MyCoursesRemoteDataSource>(
    () => MyCoursesRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );
  // Chat
  locator.registerLazySingleton<ChatLocalDataSource>(
    () => ChatLocalDataSource(),
  );
  locator.registerLazySingleton<ChatRemoteDataSource>(
    () => ChatRemoteDataSource(
      locator.get<ApiServices>(),
      locator.get<WebSocketServices>(),
    ),
  );
  // Achievements
  locator.registerLazySingleton<AchievementsLocalDataSource>(
    () => AchievementsLocalDataSource(),
  );
  locator.registerLazySingleton<AchievementsRemoteDataSource>(
    () => AchievementsRemoteDataSource(
      locator.get<ApiServices>(),
    ),
  );
  // Achievements
  locator.registerLazySingleton<StoreLocalDataSource>(
    () => StoreLocalDataSource(),
  );
  locator.registerLazySingleton<StoreRemoteDataSource>(
    () => StoreRemoteDataSource(
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
  // Mentor Details
  locator.registerLazySingleton<MentorDetailsRepo>(
    () => MentorDetailsRepoImpl(
      locator.get<MentorDetailsLocalDataSource>(),
      locator.get<MentorDetailsRemoteDataSource>(),
    ),
  );
  // Profile Settings
  locator.registerLazySingleton<ProfileSettingsRepo>(
    () => ProfileSettingsRepolmpl(
      locator.get<ProfileSettingsLocalDataSource>(),
      locator.get<ProfileSettingsRemoteDataSource>(),
    ),
  );
  // Account Setup
  locator.registerLazySingleton<AccountSetupRepo>(
    () => AccountSetupImpl(
      locator.get<AccountSetupLocalDataSource>(),
      locator.get<AccountSetupRemoteDataSource>(),
    ),
  );
  // My Courses
  locator.registerLazySingleton<MyCoursesRepo>(
    () => MyCoursesRepoImpl(
      locator.get<MyCoursesLocalDataSource>(),
      locator.get<MyCoursesRemoteDataSource>(),
    ),
  );
  // Chat
  locator.registerLazySingleton<ChatRepo>(
    () => ChatRepoImpl(
      locator.get<ChatLocalDataSource>(),
      locator.get<ChatRemoteDataSource>(),
    ),
  );
  // Achievements
  locator.registerLazySingleton<AchievementsRepo>(
    () => AchievementsRepoImpl(
      locator.get<AchievementsLocalDataSource>(),
      locator.get<AchievementsRemoteDataSource>(),
    ),
  );
  // Achievements
  locator.registerLazySingleton<StoreRepo>(
    () => StoreRepoImpl(
      locator.get<StoreLocalDataSource>(),
      locator.get<StoreRemoteDataSource>(),
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
  locator.registerFactory<AuthCubit>(
    () => AuthCubit(
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
  // Mentor Details
  locator.registerFactory<MentorDetailsCubit>(
    () => MentorDetailsCubit(
      locator.get<MentorDetailsRepo>(),
    ),
  );

  // Profile Settigs
  locator.registerFactory<ProfileSettingsCubit>(
    () => ProfileSettingsCubit(
      locator.get<ProfileSettingsRepo>(),
    ),
  );
  // Account Setup
  locator.registerFactory<AccountSetupCubit>(
    () => AccountSetupCubit(
      locator.get<AccountSetupRepo>(),
    ),
  );
  // My Courses
  locator.registerFactory<MyCoursesCubit>(
    () => MyCoursesCubit(
      locator.get<MyCoursesRepo>(),
    ),
  );
  // Chat
  locator.registerFactory<ChatCubit>(
    () => ChatCubit(
      locator.get<ChatRepo>(),
    ),
  );
  // Achievements
  locator.registerFactory<AchievementsCubit>(
    () => AchievementsCubit(
      locator.get<AchievementsRepo>(),
    ),
  );
  // Store
  locator.registerFactory<StoreCubit>(
    () => StoreCubit(
      locator.get<StoreRepo>(),
    ),
  );
}
