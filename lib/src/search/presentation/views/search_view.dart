import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/search/domain/entities/search_by.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import '../../../../core/assets/app_svgs.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import 'widgets/recent_search/recent_search.dart';
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
  late Widget recentSearchBody;
  late Widget searchResultBody;
  late Widget body;
  late TextEditingController _controller;
  @override
  void initState() {
    recentSearchBody = RecentSearch(
      onItemTap: (value) {
        _controller.text = value;
        _submitSearch(value);
      },
    );
    searchResultBody = const SearchResults();
    body = recentSearchBody;
    _controller = TextEditingController();
    context.read<SearchCubit>().searchBy = SearchBy.courses;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              SearchBar(
                controller: _controller,
                onSubmitted: (value) {
                  _submitSearch(value);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: body,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _submitSearch(String value) {
    context.read<SearchCubit>().keyword = value;
    context.read<SearchCubit>().refresh();
    setState(() {
      body = searchResultBody;
    });
  }
}
