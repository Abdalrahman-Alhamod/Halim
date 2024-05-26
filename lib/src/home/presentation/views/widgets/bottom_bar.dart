import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../../../core/themes/app_colors.dart';
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
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const BrowseSectionsCourses(),
    const Icon(Icons.power_input_sharp, size: 150),
    const Icon(Icons.more_horiz_outlined, size: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: SalomonBottomBar(
        itemPadding: const EdgeInsets.all(10),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.darkFlatButtonColor,
        backgroundColor:
            context.isDarkMode
                ? AppColors.darkColor
                : Colors.white,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_filled),
            title: const Text('Home'),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.video_collection),
            title: const Text('My Courses'),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.power_input_sharp),
            title: const Text('Points'),
            selectedColor: AppColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.more_horiz_outlined),
            title: const Text('More'),
            selectedColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
