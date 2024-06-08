import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/profile_settings/presentation/views/settings_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../my_courses/presentation/views/browse_sections_view.dart';
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
    const BrowseSectionsCourses(),
    const Icon(Icons.power_input_sharp, size: 150),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
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
              _pageController.animateToPage(
                newIndex,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
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
            title:Text(LocaleKeys.HomePage_Home_NavBar_myCourses.tr()),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.power_input_sharp),
            title: Text(LocaleKeys.HomePage_Home_NavBar_myPoints.tr()),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.settings),
            title:Text(LocaleKeys.HomePage_Home_NavBar_more.tr()),
            selectedColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
