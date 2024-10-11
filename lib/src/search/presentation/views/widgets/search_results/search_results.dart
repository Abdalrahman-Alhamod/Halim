import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/entities/search_by.dart';
import '../../../manager/search_cubit/search_cubit.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

import '../../../../../../core/themes/app_colors.dart';
import 'widgets/courses_search_results.dart';
import 'widgets/mentor_search_results.dart';

part 'widgets/search_by/search_by_bar.dart';
part 'widgets/search_by/search_by_button.dart';
part 'widgets/search_results_header.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({
    super.key,
  });

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  late Widget _body;
  late Widget _coursesSearchResults;
  late Widget _mentorsSearchResults;

  @override
  void initState() {
    _coursesSearchResults = const CoursesSearchResults();
    _mentorsSearchResults = const MentorsSearchResults();
    _body = _coursesSearchResults;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SearchByBar(
          (index) {
            switch (index) {
              case 0:
                _body = _coursesSearchResults;
                context.read<SearchCubit>().searchBy = SearchBy.courses;
                break;
              case 1:
                _body = _mentorsSearchResults;
                context.read<SearchCubit>().searchBy = SearchBy.mentors;
                break;
            }
            setState(() {});
            context.read<SearchCubit>().changeSortBy();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        BlocBuilder<SearchCubit, SearchState>(
          buildWhen: context.read<SearchCubit>().buildSearchResultsHeaderWhen,
          builder: (context, state) {
            return _SearchResultsHeader(
              serchKeyword: context.read<SearchCubit>().keyword,
              resultsNum: context.read<SearchCubit>().resultsNumber,
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(child: _body),
      ],
    );
  }
}
