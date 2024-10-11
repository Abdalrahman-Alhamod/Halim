import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../manager/search_cubit/search_cubit.dart';

import '../../../../../../home/presentation/views/widgets/card_course.dart';

class CoursesSearchResults extends StatelessWidget {
  const CoursesSearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      buildWhen: context.read<SearchCubit>().buildSearchResultsWhen,
      listenWhen: context.read<SearchCubit>().listenWhen,
      listener: context.read<SearchCubit>().listen,
      builder: (context, state) {
        return context.read<SearchCubit>().buildCoursesSearchResultsList(
          context,
          pagingController:
              context.read<SearchCubit>().coursesPagingAdapter.pagingController,
          itemBuilder: (_, item, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CardCourse(
                courseCardModel: item,
              ),
            );
          },
        );
      },
    );
  }
}
