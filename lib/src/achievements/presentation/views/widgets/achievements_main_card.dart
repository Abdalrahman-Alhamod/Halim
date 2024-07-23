import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class AchievementsNumbersCard extends StatelessWidget {
  const AchievementsNumbersCard({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : AppColors.primaryColor.withAlpha(20),
          border: Border.symmetric(
            vertical: BorderSide(
              color: context.isDarkMode
                  ? AppColors.darkColor
                  : AppColors.primaryColor.withAlpha(30),
              width: 1,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            content
          ],
        ),
      ),
    );
  }
}

class PointsText extends StatelessWidget {
  const PointsText({
    super.key,
    required this.points,
  });
  final int points;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      points.toString(),
      maxLines: 1,
      style: const TextStyle(
        fontSize: 36,
        color: Colors.green,
      ),
    );
  }
}

class RankText extends StatelessWidget {
  const RankText({
    super.key,
    required this.rank,
  });
  final int rank;
  @override
  Widget build(BuildContext context) {
    double fontSize = 36;
    switch (rank) {
      case 1:
        return Text(
          '1st',
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.yellow,
          ),
        );

      case 2:
        return Text(
          '2nd',
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.blueGrey,
          ),
        );

      case 3:
        return Text(
          '3rd',
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.brown,
          ),
        );

      default:
        return Text(
          '${rank}th',
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.red,
          ),
        );
    }
  }
}
