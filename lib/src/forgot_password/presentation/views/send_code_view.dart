import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/forgot_password/presentation/views/widget/listTile_email_phone.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';

class SendCodeview extends StatefulWidget {
  const SendCodeview({super.key});

  @override
  State<SendCodeview> createState() => _SendCodeviewState();
}

class _SendCodeviewState extends State<SendCodeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text('Change Password',
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
                'Select which contact details should we use to rest your password',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            ListTileEmailPhone(),
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
