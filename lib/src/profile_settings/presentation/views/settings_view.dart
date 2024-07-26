import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/auth/presentation/manager/logout_cubit/logout_cubit.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import 'functions/log_out_bottom_sheet.dart';
import 'widget/filter_toggle_button_with_icon.dart';
import 'widget/halim_widget.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import 'widget/settings_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  SettingsViewState createState() => SettingsViewState();
}

class SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              AppImages.appLogo,
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              LocaleKeys.HomePage_Home_NavBar_more.tr(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsWidget(
              name: LocaleKeys.Settings_EditProfile_edit.tr(),
              icon: Icons.person,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kEditProfile);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.Settings_Notifications_notifications.tr(),
              icon: Icons.notifications_active,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kNotificationSettingsView);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.ForgotPassword_change.tr(),
              icon: Icons.security,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSecurityView);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.Settings_Payments_payments.tr(),
              icon: Icons.payment,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kPaymentsView);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.Settings_Recharge_rechargeOperations.tr(),
              icon: Icons.account_balance_wallet,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kShippingView);
              },
            ),
            SettingsWidget(
              name: LocaleKeys.Settings_Language_language.tr(),
              icon: Icons.language,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kLanguageSettingsView);
              },
            ),
            FilterToggleButtonWithIcon(
              filterName: LocaleKeys.Settings_dark.tr(),
              fun: (isDarkModeEnabled) {
                isDarkModeEnabled
                    ? AdaptiveTheme.of(context).setDark()
                    : AdaptiveTheme.of(context).setLight();
              },
              icon: Icons.remove_red_eye,
            ),
            /*SettingsWidget(
              name: 'Privacy Policy',
              icon: Icons.privacy_tip_rounded,
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kHome);
              },
            ),*/
            /*SettingsWidget(
              name: 'dialog courses test',
              icon: Icons.help_outlined,
              onPressed: () {
                showCustomDialog(
                    context: context, widget: EvaluationCoursesDialog());
              },
            ),*/
            HalimWidget(
                name: LocaleKeys.Settings_HalimTeam_hailm.tr(),
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kDefinitionHalimView);
                }),
            BlocListener<LogoutCubit, LogoutState>(
              listenWhen: context.read<LogoutCubit>().listenWhen,
              listener: context.read<LogoutCubit>().listen,
              child: SettingsWidget(
                name: LocaleKeys.Settings_Logout_logout.tr(),
                icon: Icons.logout_rounded,
                onPressed: () {
                  logOutBottomSheet(context);
                },
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
