import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
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
            context.isDarkMode ? AppColors.darkColor : Colors.white,
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Row(
          children: [
            Text(
              LocaleKeys.HomePage_NotificationsPage_notifications.tr(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 1,
            ),
            Icon(
              Icons.notifications_active_outlined,
              size: 28,
              color: context.isDarkMode ? Colors.white : Colors.black,
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
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  LocaleKeys.HomePage_NotificationsPage_today.tr(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
            NotificationsCard(
              icon: Icons.payments,
              imageUrl: AppImages.iconPublic,
              title: LocaleKeys.HomePage_NotificationsPage_widgets_todayIs.tr(),
              description:
                  LocaleKeys.HomePage_NotificationsPage_widgets_t2odyIs.tr(),
            ),
            NotificationsCard(
              icon: Icons.price_change,
              textToCopy: 'afogjojfhmgfmhposkhpos[gjhsgjhpojsghj5',
              imageUrl: AppImages.accountDone,
              title:
                  LocaleKeys.HomePage_NotificationsPage_widgets_discount.tr(),
              description:
                  LocaleKeys.HomePage_NotificationsPage_widgets_d2iscount.tr(),
              picColor: Colors.amber,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  LocaleKeys.HomePage_NotificationsPage_yesterday.tr(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
            NotificationsCard(
              icon: Icons.payment,
              picColor: Colors.pink,
              imageUrl: AppImages.iconPublic,
              title: LocaleKeys.HomePage_NotificationsPage_widgets_payment.tr(),
              description:
                  LocaleKeys.HomePage_NotificationsPage_widgets_p2ayment.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
