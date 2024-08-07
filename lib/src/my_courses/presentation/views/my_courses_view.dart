import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/sections_view/data/section_page.dart';
import '../../../../core/widgets/sections_view/sections_view.dart';
import 'widget/completed_courses_page.dart';
import 'widget/my_courses_app_bar.dart';
import 'widget/ongoing_courses_page.dart';
import 'widget/saved_courses_page.dart';

import '../../../../core/translations/locale_keys.g.dart';

class MyCoursesView extends StatelessWidget {
  const MyCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCoursesAppBar(),
      body: SectionsView(
        pages: [
          SectionPage(
            title: LocaleKeys.MyCourses_ongoing.tr(),
            child: const OngoingCoursesPage(),
          ),
          SectionPage(
            title: LocaleKeys.MyCourses_completed.tr(),
            child: const CompletedCoursesPage(),
          ),
          SectionPage(
            title: LocaleKeys.MyCourses_saved.tr(),
            child: const SavedCoursesPage(),
          ),
          // TODO implements downloaded courses
          // SectionPage(
          //   title: LocaleKeys.MyCourses_downloaded.tr(),
          //   child: const DownloadedCoursesPage(),
          // ),
        ],
        // isScrollable: true,
        isChildrenExpandable: false,
      ),
    );
  }
}
