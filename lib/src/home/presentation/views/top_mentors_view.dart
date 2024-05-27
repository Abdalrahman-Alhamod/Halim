import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
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
            context.isDarkMode
                ? AppColors.darkColor
                : Colors.white,
        title: Row(
          children: [
            Text(
                                   LocaleKeys.HomePage_Home_topMentors.tr(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color:
                    context.isDarkMode
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
          color: context.isDarkMode
              ? Colors.white
              : Colors.black,
          icon: const Icon(Icons.arrow_back),
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
          TeacherCard(),
          TeacherCard(),
          TeacherCard(),
        ],
      ),
    );
  }
}
