import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import 'widgets/counter_widget.dart';
import 'widgets/welcome_card.dart';
import 'widgets/card_advertisement.dart';
import 'widgets/card_course.dart';
import 'widgets/category_widget.dart';
import 'widgets/teacher_avatar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        title: const WelcomeCard(),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MotivationalCounterWidget(
              points: 20,
            ),
            const CardAdvertisement(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.HomePage_Home_topMentors.tr(),
                    style: TextStyle(
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRoute.kTopMentors);
                    },
                    child: Text(
                      LocaleKeys.HomePage_Home_seeAll.tr(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  children: const [
                    TeacherAvatar(
                        imageUrl: AppImages.testAvatarAlaa, name: 'Alaa'),
                    TeacherAvatar(
                        imageUrl: AppImages.testAvatarAbd,
                        name: 'Abd Alrahman'),
                    TeacherAvatar(
                        imageUrl: AppImages.testAvatarObada, name: 'Obada'),
                    TeacherAvatar(
                        imageUrl: AppImages.testAvatarYassin, name: 'Yaseen'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.HomePage_Home_mostPopularCourses.tr(),
                    style: TextStyle(
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRoute.kPopularCourses);
                    },
                    child: Text(
                      LocaleKeys.HomePage_Home_seeAll.tr(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  children: const [
                    CategoryWidget('🔥 All'),
                    CategoryWidget('📊 BA'),
                    CategoryWidget('💰 Business'),
                    CategoryWidget('💡 AI'),
                    CategoryWidget('🖋 3D Design'),
                    CategoryWidget('💊 Medicine '),
                    CategoryWidget('🧮 Mathematical analysis'),
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
