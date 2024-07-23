import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';

import 'widget/leaderboards_card.dart';

import '../../../../core/themes/app_colors.dart';

class LeaderboardsView extends StatefulWidget {
  const LeaderboardsView({super.key});

  @override
  LeaderboardsViewState createState() => LeaderboardsViewState();
}

class LeaderboardsViewState extends State<LeaderboardsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Leaderboards_leaderboards.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          LeaderboardsCard(
            imageUrl: AppImages.testAvatarAlaa,
            title: LocaleKeys.CourseDetails_Test_Reviews_Names_alaa.tr(),
            hours: 15,
            rank: 1,
          ),
          LeaderboardsCard(
            imageUrl: AppImages.testAvatarAbd,
            title: LocaleKeys.CourseDetails_Test_Reviews_Names_abd.tr(),
            hours: 600,
            rank: 2,
          ),
          LeaderboardsCard(
            imageUrl: AppImages.testAvatarYassin,
            title: LocaleKeys.CourseDetails_Test_Reviews_Names_yassin.tr(),
            hours: 40,
            rank: 63,
          ),
        ]),
      ),
    );
  }
}
