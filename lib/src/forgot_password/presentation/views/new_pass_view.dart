import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/remember_me_check_box.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import '../../../login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';

class NewPassView extends StatefulWidget {
  const NewPassView({super.key});

  @override
  State<NewPassView> createState() => _NewPassViewState();
}

class _NewPassViewState extends State<NewPassView> {
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(
            'Create New Password',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w500,
              color:
                  context.isDarkMode
                      ? Colors.white
                      : Colors.black,
            ),
          ),
          elevation: 0,
          //  toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color:
                  context.isDarkMode
                      ? Colors.white
                      : Colors.black,
            ),
            onPressed: () {
             GoRouter.of(context).pop();
            },
          ),
        ),
        backgroundColor:
            context.isDarkMode
                ? AppColors.darkColor
                : Colors.white,
        body: Form(
          key: formKey,
          child: Column(
            children: [
              const Spacer(
                flex: 4,
              ),
              Text('Create Your New Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.normal,
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
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
                flex: 2,
              ),
              CustomFlatButton(
                onPressed: () {
                  /*if (formKey.currentState!.validate()) {
                    GoRouter.of(context).push(AppRoute.kHome);
                  } else {}*/
                  GoRouter.of(context).push(AppRoute.kHome);
                },
                title: 'Continue',
                width: context.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ));
  }
}
