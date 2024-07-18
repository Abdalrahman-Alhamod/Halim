import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/phoneNum_input.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/widgets/custome_flat_button.dart';

import 'package:halim/core/assets/app_images.dart';


class EnterPhoneBody extends StatefulWidget {
  const EnterPhoneBody();

  @override
  _EnterPhoneBodyState createState() => _EnterPhoneBodyState();
}

class _EnterPhoneBodyState extends State<EnterPhoneBody> {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      height: context.height - 100,
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(AppImages.newPassword,
                height: 250, width: 300, fit: BoxFit.fill),
          ),
          const Spacer(
            flex: 2,
          ),
          Text(LocaleKeys.ForgotPassword_EnterPhone_EnterThe.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              )),
          const Spacer(
            flex: 1,
          ),PhoneNumberInputScreen(),
          // CustomTextField(
          //   obscureText: false,
          //   hintText: LocaleKeys.Auth_email.tr(),
          //   onChanged: (value) {
          //     email = value;
          //     setState(() {
          //       if (value != '') {
          //         isEmailFilled = true;
          //       } else {
          //         isEmailFilled = false;
          //       }
          //     });
          //   },
          //   keyboardType: TextInputType.emailAddress,
          //   validator: _emailValidator.call,
          //   prefixIcon: Icons.email,
          // ),
          const Spacer(
            flex: 2,
          ),
          CustomFlatButton(
            onPressed: () {
              GoRouter.of(context).go(AppRoute.kEnterCode);
            },
            title: LocaleKeys.FillYourProfile_continue.tr(),
            width: context.width * 0.94,
            height: 60,
            kTextcolor: AppColors.lightFlatButtonColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
