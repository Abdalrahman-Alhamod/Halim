part of '../search_view.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // RecentSearch(),
        SearchResults(),
      ],
    );
  }
}
