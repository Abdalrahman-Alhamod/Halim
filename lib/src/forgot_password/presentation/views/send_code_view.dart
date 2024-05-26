import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
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
            context.isDarkMode
                ? AppColors.darkColor
                : Colors.white,
        title: Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
            color: context.isDarkMode
                ? Colors.white
                : Colors.black,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kBiomatric);
          },
        ),
      ),
      backgroundColor:
          context.isDarkMode
              ? AppColors.darkColor
              : Colors.white,
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
                'Select which contact details should we use to rest your password',
                style: TextStyle(
                  fontSize: 16,
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 1,
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
                    Icons.sms_rounded,
                    size: 25,
                    color: AppColors.primaryColor,
                  ),
                ),
                enabled: true,
                title: Text(
                  'via SMS:',
                  style: TextStyle(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.grey[400]
                        : Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                subtitle: Text(
                  '+1 111 *** **9',
                  style: TextStyle(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color:
                        isItemSelectedOne ? Colors.blue : Colors.grey.shade200,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                dense: true,
                onTap: () {
                  setState(() {
                    isItemSelectedOne = !isItemSelectedOne;
                  });
                },
              ),
            ),
            //Container(height: 20,),
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
                  'via Email:',
                  style: TextStyle(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.grey[400]
                        : Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                subtitle: Text(
                  'and**ley@gmail.com',
                  style: TextStyle(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color:
                        isItemSelectedTwo ? Colors.blue : Colors.grey.shade200,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                dense: true,
                onTap: () {
                  setState(() {
                    isItemSelectedTwo = !isItemSelectedTwo;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CustomFlatButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kEnterCode);
                },
                title: 'Continue',
                width: MediaQuery.of(context).size.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
