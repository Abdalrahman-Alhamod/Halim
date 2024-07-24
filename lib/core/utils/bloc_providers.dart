import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/search/presentation/manager/search_cubit.dart';

import 'locator.dart';

List<BlocProvider> initProviders() {
  return [
    BlocProvider<SearchCubit>(
      create: (context) => locator.get<SearchCubit>(),
    ),
  ];
}
