import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../shared/model/course_card_model.dart';
import '../../../shared/model/subcategory_model.dart';
import 'widgets/choose_your_specialty_with_courses.dart';
import 'widgets/card_course.dart';

class PopularCoursesView extends StatefulWidget {
  const PopularCoursesView({super.key});

  @override
  PopularCoursesViewState createState() => PopularCoursesViewState();
}

class PopularCoursesViewState extends State<PopularCoursesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Row(
          children: [
            Text(
              LocaleKeys.HomePage_Home_mostPopularCourses.tr(),
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 1,
            ),
            Icon(
              Icons.search_sharp,
              size: 28,
              color: context.isDarkMode ? Colors.white : Colors.black,
            )
          ],
        ),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kHome);
          },
        ),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: Column(
        children: [
          const ChooseYourSpecialtyWithCourses(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                children: const [
                  // TODO fix subcategories list
                  // CategoryWidget('🔥 All'),
                  // CategoryWidget('💡 AI'),
                  // CategoryWidget('🖋 3D Design'),
                  // CategoryWidget('💊 Medicine '),
                  // CategoryWidget('🧮 Mathematical analysis'),
                  // CategoryWidget('📊 BA'),
                  // CategoryWidget('💰 Business'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CardCourse(
                    courseCardModel: CourseCardModel(
                      id: 0,
                      title: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
                      image: AppImages.testCourseCover,
                      price: 48,
                      subcategory: SubcategoryModel(
                        id: 0,
                        name: LocaleKeys.CourseDetails_Test_courseCategory.tr(),
                      ),
                      enrollmentsCount: 546,
                      reviewsAvg: 4.8,
                      isSaved: false,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 16,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
