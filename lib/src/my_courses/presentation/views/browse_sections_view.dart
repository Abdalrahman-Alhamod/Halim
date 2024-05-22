import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import 'widget/follow_course.dart';

class BrowseSectionsCourses extends StatefulWidget {
  const BrowseSectionsCourses({super.key});

  @override
  BrowseSectionsCoursesState createState() => BrowseSectionsCoursesState();
}

class BrowseSectionsCoursesState extends State<BrowseSectionsCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode
                ? AppColors.darkColor
                : Colors.white,
        title: Row(
          children: [
            Text(
              'My Courses',
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontSize: 20,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 28,
                color:
                    context.isDarkMode
                        ? Colors.white
                        : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSearch);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.bookmark,
                size: 28,
                color:
                    context.isDarkMode
                        ? Colors.white
                        : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kBookMark);
              },
            ),
          ],
        ),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kHome);
          },
        ),
      ),
      backgroundColor:
          context.isDarkMode
              ? AppColors.darkColor
              : Colors.white,
      body: const Column(
        children: [
          FollowCourse(
            imageUrl: AppImages.testCourseCover,
            name: 'Artificial intelligence',
            allEpisodes: 40,
            completedEpisodes: 33,
            hours: 40,
            min: 25,
          ),
        ],
      ),
    );
  }
}
