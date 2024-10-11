import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../mentor_details/presentation/views/widgets/mentor_card.dart';
import '../../../../manager/search_cubit/search_cubit.dart';

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
              child: MentorCard(
                mentorCardModel: item,
              ),
            );
          },
        );
      },
    );
  }
}
