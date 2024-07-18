import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';

class SendCodeview extends StatefulWidget {
  const SendCodeview({super.key});

  @override
  State<SendCodeview> createState() => _SendCodeviewState();
}

class _SendCodeviewState extends State<SendCodeview> {
  bool isItemSelectedOne = false;
  bool isItemSelectedTwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text(LocaleKeys.ForgotPassword_change.tr(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(AppImages.forgotPassword,
                  height: 250, width: 250, fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                LocaleKeys.ForgotPassword_select.tr(),
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: Container(
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: AppColors.lightFlatButtonColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.sms_rounded,
                        size: 25,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabled: true,
                    title: Text(
                      LocaleKeys.ForgotPassword_viaSms.tr(),
                      style: TextStyle(
                        color:
                            context.isDarkMode ? Colors.grey[400] : Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: isItemSelectedOne
                            ? Colors.blue
                            : Colors.grey.shade200,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    dense: true,
                    onTap: () {
                      setState(() {
                        isItemSelectedOne = !isItemSelectedOne;
                        if (isItemSelectedOne) {
                          isItemSelectedTwo = false;
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: Container(
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: AppColors.lightFlatButtonColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.email,
                        size: 28,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabled: true,
                    title: Text(
                      LocaleKeys.ForgotPassword_viaEmail.tr(),
                      style: TextStyle(
                        color:
                            context.isDarkMode ? Colors.grey[400] : Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: isItemSelectedTwo
                            ? Colors.blue
                            : Colors.grey.shade200,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    dense: true,
                    onTap: () {
                      setState(() {
                        isItemSelectedTwo = !isItemSelectedTwo;
                        if (isItemSelectedTwo) {
                          isItemSelectedOne = false;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CustomFlatButton(
              isEnabled: isItemSelectedOne || isItemSelectedTwo ? true : false,
                onPressed: () {
                  isItemSelectedTwo
                      ? GoRouter.of(context).push(AppRoute.kEnterEmailView)
                      : GoRouter.of(context).push(AppRoute.kEnterPhoneNumView);
                },
                title: LocaleKeys.FillYourProfile_continue.tr(),
                width: MediaQuery.of(context).size.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
