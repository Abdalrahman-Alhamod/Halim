import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

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
                LocaleKeys.HomePage_Home_goodMorning.tr(),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                'Alaa Lababedi',
                style: TextStyle(
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
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kSearch);
          },
        ),
        IconButton(
          icon: Icon(
            Icons.notifications_active_outlined,
            size: 28,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kNotifications);
          },
        ),
      ],
    );
  }
}
