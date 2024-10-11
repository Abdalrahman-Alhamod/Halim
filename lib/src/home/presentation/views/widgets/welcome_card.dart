import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widgets/avatar_image_loader.dart';
// ignore: unused_import
import '../../../../../core/assets/app_images.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/utils/app_route.dart';

class WelcomeCard extends StatefulWidget {
  final String? name;
  final String? image;
  const WelcomeCard({super.key, this.image, this.name});

  @override
  State<WelcomeCard> createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoute.kProfileStudentPersonalView);
          },
          child: Row(
            children: [
              AvatarImageLoader(
                imageUrl: widget.image,
                radius: 25,
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
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      widget.name ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
