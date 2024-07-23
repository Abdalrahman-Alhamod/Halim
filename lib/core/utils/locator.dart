import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/sources/remote/services/api_services.dart';
import '../data/sources/remote/services/api_services_impl.dart';

final GetIt locator = GetIt.instance;
void setupLocators() {
  locator.registerLazySingleton<Dio>(
    () => Dio(),
  );
  locator.registerLazySingleton<ApiServices>(
    () => ApiServicesImpl(
      locator.get<Dio>(),
      // locator()
    ),
  );
}
