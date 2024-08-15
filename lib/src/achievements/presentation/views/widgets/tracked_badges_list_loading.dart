
import 'package:flutter/material.dart';

import 'tracked_badge_loading.dart';

class TrackedBadgesListLoading extends StatelessWidget {
  const TrackedBadgesListLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) =>
          const TrackedBadgeLoading(),
    );
  }
}
