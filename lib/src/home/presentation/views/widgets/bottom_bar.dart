import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../achievements/presentation/views/achievements_view.dart';
import '../../../../profile_settings/presentation/views/settings_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../my_courses/presentation/views/my_courses_view.dart';
import '../home_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  late int _currentIndex;
  late PageController _pageController;
  @override
  void initState() {
    _currentIndex = 0;
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> _pages = [
    const HomeView(),
    const MyCoursesView(),
    const AchievementsView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: SalomonBottomBar(
        itemPadding: const EdgeInsets.all(12),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.darkFlatButtonColor,
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(
            () {
              _currentIndex = newIndex;
              _pageController.jumpToPage(
                newIndex,
              );
            },
          );
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_filled),
            title: Text(LocaleKeys.HomePage_Home_NavBar_home.tr()),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.video_collection),
            title: Text(LocaleKeys.HomePage_Home_NavBar_myCourses.tr()),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.military_tech),
            title: Text(LocaleKeys.Achievements_achievemenets.tr()),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.settings),
            title: Text(LocaleKeys.HomePage_Home_NavBar_more.tr()),
            selectedColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
