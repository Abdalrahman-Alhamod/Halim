import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import 'widgets/ChooseYourSpecialtyWithCourses.dart';
import 'widgets/card_course.dart';
import 'widgets/category_widget.dart';

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
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontWeight: FontWeight.w500),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChooseYourSpecialtyWithCourses(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  children: const [
                    CategoryWidget('🔥 All'),
                    CategoryWidget('💡 AI'),
                    CategoryWidget('🖋 3D Design'),
                    CategoryWidget('💊 Medicine '),
                    CategoryWidget('🧮 Mathematical analysis'),
                    CategoryWidget('📊 BA'),
                    CategoryWidget('💰 Business'),
                  ],
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                CardCourse(
                  category: '3D Design',
                  evaluation: 4.8,
                  followers: 8.289,
                  name: '3D Design illustation',
                  price: 48,
                  imageUrl: AppImages.testCourseCover,
                ),
                CardCourse(
                  category: 'السياحة والسفر',
                  evaluation: 4.1,
                  followers: 1.154,
                  name: 'رحلات الفضاء',
                  price: 120,
                  imageUrl: AppImages.testCourseCover,
                ),
                CardCourse(
                  category: 'AI',
                  evaluation: 5.0,
                  followers: 5.68,
                  name: 'Artificial intelligence',
                  price: 200,
                  imageUrl: AppImages.testCourseCover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
