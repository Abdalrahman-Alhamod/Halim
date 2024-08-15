import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/widgets/shimmer_box.dart';

class AchievementsNumbersListTileLoading extends StatelessWidget {
  const AchievementsNumbersListTileLoading({
    super.key,
    required this.svgPath,
    required this.title,
  });

  final String svgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svgPath,
        width: 30,
      ),
      minLeadingWidth: 40,
      title: AutoSizeText(
        title,
        maxLines: 1,
        style: TextStyle(
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade700),
      ),
      subtitle: ShimmerBox(
        height: 28,
        width: context.width * 0.2,
      ),
    );
  }
}
