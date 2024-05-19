import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
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
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.darkColor
                : Colors.white,
        title: Row(
          children: [
            Text(
              'Popular Courses',
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
            Icon(
              Icons.search_sharp,
              size: 28,
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
            )
          ],
        ),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kHome);
          },
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkColor
              : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  children: [
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
                  imageUrl: 'images/p1.jpg',
                ),
                CardCourse(
                  category: 'Travilling',
                  evaluation: 4.1,
                  followers: 1.154,
                  name: 'Outer Space',
                  price: 120,
                  imageUrl: 'images/p2.jpg',
                ),
                CardCourse(
                  category: 'AI',
                  evaluation: 5.0,
                  followers: 5.68,
                  name: 'artificial intelligence',
                  price: 200,
                  imageUrl: 'images/p4.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
