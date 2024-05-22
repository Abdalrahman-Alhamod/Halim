import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import 'widgets/notifications_card.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  NotificationsViewState createState() => NotificationsViewState();
}

class NotificationsViewState extends State<NotificationsView> {
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
              'Notifications',
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
              Icons.notifications_active_outlined,
              size: 28,
              color:
                  context.isDarkMode
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
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Today',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontSize: 18,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          const NotificationsCard(
            imageUrl: AppImages.accountDone,
            title: 'Payment Successful',
            description: 'You have made a course payment',
          ),
          const NotificationsCard(
            imageUrl: AppImages.accountDone,
            title: 'Today\'s Special Offers',
            description: 'You get a special promo today!',
            picColor: Colors.amber,
          )
        ],
      ),
    );
  }
}
