import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_svgs.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/search/presentation/views/widgets/recent_search/recent_search.dart';
import '../../../../core/constants/app_constrains.dart';
import '../../../../core/themes/app_colors.dart';
// ignore: unused_import
import '../../../home/presentation/views/widgets/category_widget.dart';
import 'widgets/filter/filter_bottom_sheet.dart';
import 'widgets/search_results/search_results.dart';
import 'widgets/sortBy/sort_by_bottom_sheet.dart';
part 'widgets/search_bar.dart';
part 'widgets/search_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late Widget body;
  @override
  void initState() {
    body = RecentSearch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchBar(onSubmitted: (value) {
                  if (!value.isEmpty) {
                    setState(() {
                      body = SearchResults();
                    });
                  }
                }),
                SizedBox(
                  height: 20,
                ),
                body,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
