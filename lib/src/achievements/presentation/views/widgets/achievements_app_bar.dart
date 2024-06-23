import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          onPressed: () {},
          icon: SvgPicture.asset(
            AppSVGs.leaderbaord,
          ),
        ),
        IconButton(
          onPressed: () {},
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
