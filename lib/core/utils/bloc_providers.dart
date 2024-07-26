import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:halim/src/auth/presentation/manager/logout_cubit/logout_cubit.dart';
import 'package:halim/src/search/presentation/manager/search_cubit.dart';

import 'locator.dart';

List<BlocProvider> initProviders() {
  return [
    BlocProvider<SearchCubit>(
      create: (context) => locator.get<SearchCubit>(),
    ),
    BlocProvider<LoginCubit>(
      create: (context) => locator.get<LoginCubit>(),
    ),
    BlocProvider<LogoutCubit>(
      create: (context) => locator.get<LogoutCubit>(),
    ),
  ];
}
