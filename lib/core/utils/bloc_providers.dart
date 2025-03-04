import 'package:flutter_bloc/flutter_bloc.dart';
import '../../src/account_setup/presentation/manager/account_setup_cubit/account_setup_cubit.dart';
import '../../src/achievements/presentation/manager/achievements_cubit/achievements_cubit.dart';
import '../../src/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../src/chat/presentation/manager/chat_cubit/chat_cubit.dart';
import '../../src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../../src/course_details/presentation/manager/reviews_cubit/reviews_cubit.dart';
import '../../src/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';
import '../../src/my_courses/presentation/manager/my_courses_cubit/my_courses_cubit.dart';
import '../../src/profile_settings/presentation/manager/cubit/profile_settings_cubit.dart';
import '../../src/search/presentation/manager/search_cubit/search_cubit.dart';
import '../../src/search/presentation/manager/search_keywords_cubit/search_keywords_cubit.dart';

import '../../src/store/presentation/manager/store_cubit/store_cubit.dart';
import 'locator.dart';

List<BlocProvider> initProviders() {
  return [
    BlocProvider<SearchKeywordsCubit>(
      create: (context) => locator.get<SearchKeywordsCubit>(),
    ),
    BlocProvider<SearchCubit>(
      create: (context) => locator.get<SearchCubit>()..init(context),
    ),
    BlocProvider<AuthCubit>(
      create: (context) => locator.get<AuthCubit>(),
    ),
    BlocProvider<HomeCubit>(
      create: (context) => locator.get<HomeCubit>()..init(context),
    ),
    BlocProvider<CourseDetailsCubit>(
      create: (context) => locator.get<CourseDetailsCubit>()..init(context),
    ),
    BlocProvider<MentorDetailsCubit>(
      create: (context) => locator.get<MentorDetailsCubit>()..init(context),
    ),
    BlocProvider<ReviewsCubit>(
      create: (context) => locator.get<ReviewsCubit>()..init(context),
    ),
    BlocProvider<ProfileSettingsCubit>(
      create: (context) => locator.get<ProfileSettingsCubit>(),
    ),
    BlocProvider<AccountSetupCubit>(
      create: (context) => locator.get<AccountSetupCubit>(),
    ),
    BlocProvider<MyCoursesCubit>(
      create: (context) => locator.get<MyCoursesCubit>()..init(context),
    ),
    BlocProvider<ChatCubit>(
      create: (context) => locator.get<ChatCubit>(),
    ),
    BlocProvider<AchievementsCubit>(
      create: (context) => locator.get<AchievementsCubit>(),
    ),
    BlocProvider<StoreCubit>(
      create: (context) => locator.get<StoreCubit>()..init(context),
    ),
  ];
}
