import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/course_about_mentor.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';

class MentorsSearchResults extends StatelessWidget {
  const MentorsSearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      buildWhen: context.read<SearchCubit>().buildSearchResultsWhen,
      listenWhen: context.read<SearchCubit>().listenWhen,
      listener: context.read<SearchCubit>().listen,
      builder: (context, state) {
        return context.read<SearchCubit>().buildMentorsSearchResultsList(
          context,
          pagingController:
              context.read<SearchCubit>().mentorsPagingAdapter.pagingController,
          itemBuilder: (_, item, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: CourseAboutMentor(
                mentorCardModel: item,
              ),
            );
          },
        );
      },
    );
  }
}
