import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:halim/src/auth/presentation/manager/logout_cubit/logout_cubit.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'package:halim/src/course_details/presentation/manager/reviews_cubit/reviews_cubit.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:halim/src/search/presentation/manager/search_keywords_cubit/search_keywords_cubit.dart';

import 'locator.dart';

List<BlocProvider> initProviders() {
  return [
    BlocProvider<SearchKeywordsCubit>(
      create: (context) => locator.get<SearchKeywordsCubit>(),
    ),
    BlocProvider<SearchCubit>(
      create: (context) => locator.get<SearchCubit>()..init(context),
    ),
    BlocProvider<LoginCubit>(
      create: (context) => locator.get<LoginCubit>(),
    ),
    BlocProvider<LogoutCubit>(
      create: (context) => locator.get<LogoutCubit>(),
    ),
    BlocProvider<HomeCubit>(
      create: (context) => locator.get<HomeCubit>(),
    ),
    BlocProvider<CourseDetailsCubit>(
      create: (context) => locator.get<CourseDetailsCubit>(),
    ),
    BlocProvider<ReviewsCubit>(
      create: (context) => locator.get<ReviewsCubit>()..init(context),
    ),
  ];
}
