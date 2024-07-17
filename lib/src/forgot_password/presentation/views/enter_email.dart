import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/functions/show_custom_dialog.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/forgot_password/presentation/views/enter_code_body.dart';
import 'package:halim/src/forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';

class EnterEmailView extends StatefulWidget {
  const EnterEmailView({super.key});

  @override
  State<EnterEmailView> createState() => _EnterEmailViewState();
}

class _EnterEmailViewState extends State<EnterEmailView> {
    GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(LocaleKeys.ForgotPassword_enterEmail.tr(),
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
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        body: Form(
      key: formKey,
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
          Text(LocaleKeys.ForgotPassword_createNew.tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              )),
          
          const Spacer(
            flex: 1,
          ),
          CustomFlatButton(
            onPressed: () {
              showCustomDialog(
                  context: context,
                  widget: AccontSucssesDialog(
                    () {
                      print('Loading complete!');
                      GoRouter.of(context).push(AppRoute.kHome);
                    },
                  ));
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
