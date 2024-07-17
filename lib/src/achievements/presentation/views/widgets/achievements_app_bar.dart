import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';

import '../../../../../core/assets/app_svgs.dart';

class AchievementsAppBar extends StatelessWidget {
  const AchievementsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kLeaderboardsView);
          },
          icon: SvgPicture.asset(
            AppSVGs.leaderbaord,
          ),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kStoreView);
          },
          icon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              AppSVGs.store,
              width: 50,
            ),
          ),
        ),
      ],
    );
  }
}
