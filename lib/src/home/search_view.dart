import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/themes/app_colors.dart';
import '../../core/utils/app_route.dart';

class SearchView extends StatefulWidget {
  final String? dis;

  const SearchView({super.key, this.dis});
  @override
  SearchViewState createState() => SearchViewState();
}

class SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.darkColor
                : Colors.white,
        title: Row(
          children: [
            Text(
              'Search',
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontSize: 20,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 1,
            ),
            Icon(
              Icons.search,
              size: 28,
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
            )
          ],
        ),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? Colors.white
              : Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kHome);
          },
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkColor
              : Colors.white,
      body: const Column(
        children: [],
      ),
    );
  }
}
