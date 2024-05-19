import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/themes/app_colors.dart';
import '../../core/utils/app_route.dart';
import 'widgets/teacher_card.dart';

class TopMonetorsView extends StatefulWidget {
  const TopMonetorsView({super.key});

  @override
  TopMonetorsViewState createState() => TopMonetorsViewState();
}

class TopMonetorsViewState extends State<TopMonetorsView> {
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
              'Top Monetors',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w500,
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kSearch);
                },
                icon: Icon(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  Icons.search,
                  size: 28,
                ),
              ),
            )
          ],
        ),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? Colors.white
              : Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kHome);
          },
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkColor
              : Colors.white,
      body: const Column(
        children: [
          TeacherCard(),
          TeacherCard(),
          TeacherCard(),
        ],
      ),
    );
  }
}
