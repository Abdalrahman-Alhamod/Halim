import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/src/search/presentation/views/widgets/search_results/widgets/mentor_search_results_sample.dart';

import '../../../../../../core/themes/app_colors.dart';
import 'widgets/courses_search_results_sample.dart';

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
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SearchByBar(_controller),
        SizedBox(
          height: 20,
        ),
        _SearchResultsHeader(serchKeyword: '3D Design', resultsNum: 256),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          dragStartBehavior: DragStartBehavior.down,
          children: const [
            // ResultNotFound(),
            CoursesSearchResultsSample(),
            MentorsSearchResultsSample(),
          ],
        ),
      ],
    );
  }
}
