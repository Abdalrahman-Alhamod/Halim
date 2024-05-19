import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';

import '../../../../../core/utils/app_route.dart';


class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(AppImages.testAvatarAlaa),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            direction: Axis.vertical,
            spacing: 5,
            children: [
              Text(
                'Good Morning 👋',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                'Alaa Lababedi',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(
          icon: Icon(
            Icons.search,
            size: 28,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kSearch);
          },
        ),
        IconButton(
          icon: Icon(
            Icons.notifications_active_outlined,
            size: 28,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kNotifications);
          },
        ),
      ],
    );
  }
}
