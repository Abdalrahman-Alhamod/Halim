
import 'package:flutter/material.dart';

import 'static_badge_loading.dart';

class StaticBadgesGridLoading extends StatelessWidget {
  const StaticBadgesGridLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const StaticBadgeLoading();
      },
    );
  }
}