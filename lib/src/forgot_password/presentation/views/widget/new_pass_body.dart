import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/functions/show_custom_dialog.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/remember_me_check_box.dart';

import '../../../../../core/utils/app_route.dart';

class NewPassBody extends StatefulWidget {
  const NewPassBody();

  @override
  _NewPassBodyState createState() => _NewPassBodyState();
}

class _NewPassBodyState extends State<NewPassBody> {
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController passControllerOne = TextEditingController();
  TextEditingController passControllerTwo = TextEditingController();
  String password = '';
  bool rememberMe = false;

  final _passwordValidator = MultiValidator([
    RequiredValidator(errorText: LocaleKeys.Auth_thisFieldIsRequired.tr()),
    MinLengthValidator(8, errorText: LocaleKeys.Auth_passWordMustBe8Digit.tr()),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: LocaleKeys.Auth_passwordShouldContainSpecialCharacter.tr())
  ]);

  @override
  Widget build(BuildContext context) {
    return Form(
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
          CustomTextField(
            obscureText: true,
            hintText: LocaleKeys.Auth_password.tr(),
            onChanged: (value) {
              password = value;
            },
            keyboardType: TextInputType.text,
            validator: _passwordValidator.call,
            prefixIcon: Icons.lock,
          ),
          CustomTextField(
            obscureText: true,
            hintText: LocaleKeys.ForgotPassword_confirmPassword.tr(),
            onChanged: (value) {
              password = value;
            },
            keyboardType: TextInputType.text,
            validator: _passwordValidator.call,
            prefixIcon: Icons.lock,
          ),
          RememberMeCheckBox(onChange: (value) {
            rememberMe = value!;
          }),
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(AppImages.newPassword,
                height: 250, width: 300, fit: BoxFit.fill),
          ),
          const Spacer(
            flex: 2,
          ),
          Text('Create Your New Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              )),
          CustomTextField(
            obscureText: true,
            hintText: LocaleKeys.Auth_password.tr(),
            onChanged: (value) {
              password = value;
            },
            keyboardType: TextInputType.text,
            validator: _passwordValidator.call,
            prefixIcon: Icons.lock,
          ),
          CustomTextField(
            obscureText: true,
            hintText: LocaleKeys.ForgotPassword_confirmPassword.tr(),
            onChanged: (value) {
              password = value;
            },
            keyboardType: TextInputType.text,
            validator: _passwordValidator.call,
            prefixIcon: Icons.lock,
          ),
          RememberMeCheckBox(onChange: (value) {
            rememberMe = value!;
          }),
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
            title: 'Continue',
            width: context.width * 0.94,
            height: 60,
            kTextcolor: AppColors.lightFlatButtonColor,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
