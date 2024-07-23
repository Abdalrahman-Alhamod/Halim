import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/context_extensions.dart';

import 'animated_counter.dart';

class AchievementsNumbersListTile extends StatelessWidget {
  const AchievementsNumbersListTile({
    super.key,
    required this.title,
    required this.value,
    required this.svgPath,
  });
  final String title;
  final num value;
  final String svgPath;
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
      subtitle: AnimatedCounter(
        value: value,
        duration: const Duration(milliseconds:700),
      ),
    );
  }
}
