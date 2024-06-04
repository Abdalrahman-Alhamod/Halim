import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/constants/app_constrains.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/sections_view/data/section_page.dart';
import 'package:halim/core/widgets/sections_view/sections_view.dart';
import 'package:halim/src/my_courses/presentation/views/widget/completed_courses_page.dart';
import 'package:halim/src/my_courses/presentation/views/widget/downloaded_courses_page.dart';
import 'package:halim/src/my_courses/presentation/views/widget/ongoing_courses_page.dart';
import 'package:halim/src/my_courses/presentation/views/widget/saved_courses_page.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';

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
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text(
          'My Courses',
          style: TextStyle(
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
              fontSize: 20,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        toolbarHeight: AppConstrains.maxAppBarHeight,
        leadingWidth: 60,
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 28,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSearch);
              },
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Image.asset(
            AppImages.appLogo,
            width: 32,
            fit: BoxFit.contain,
          ),
        ),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SectionsView(
          pages: [
            SectionPage(
              title: LocaleKeys.MyCourses_ongoing.tr(),
              child: OngoingCoursesPage(),
            ),
            SectionPage(
              title:  LocaleKeys.MyCourses_completed.tr(),
              child: CompletedCoursesPage(),
            ),
            SectionPage(
              title:  LocaleKeys.MyCourses_saved.tr(),
              child: SavedCoursesPage(),
            ),
            SectionPage(
              title:  LocaleKeys.MyCourses_downloaded.tr(),
              child: DownloadedCoursesPage(),
            ),
          ],
        ),
      ),
    );
  }
}
