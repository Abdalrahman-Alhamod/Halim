import 'package:flutter/material.dart';

import 'recent_search_search_loading_item.dart';

class RecentSearchLoadingItemsList extends StatelessWidget {
  const RecentSearchLoadingItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: RecentSearchLoadingItem(),
      ),
    );
  }
}
