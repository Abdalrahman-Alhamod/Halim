import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';
import 'custom_text_field.dart';
import 'remember_me_check_box.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key, required this.buttonTitle, required this.onTap});
  final String buttonTitle;
  final void Function(String email, String password, bool rememberMe) onTap;
  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _emailValidator = MultiValidator([
    RequiredValidator(errorText: LocaleKeys.Auth_thisFieldIsRequired.tr()),
    EmailValidator(errorText: LocaleKeys.Auth_enterValidEmail.tr()),
  ]);

  final _passwordValidator = MultiValidator([
    RequiredValidator(errorText: LocaleKeys.Auth_thisFieldIsRequired.tr()),
    MinLengthValidator(8, errorText: LocaleKeys.Auth_passWordMustBe8Digit.tr()),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: LocaleKeys.Auth_passwordShouldContainSpecialCharacter.tr())
  ]);

  String email = '';

  String password = '';

  bool rememberMe = false;

  bool isEmailFilled = false;

  bool isPasswordFilled = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              obscureText: false,
              hintText: LocaleKeys.Auth_email.tr(),
              onChanged: (value) {
                email = value;
                setState(() {
                  if (value != '') {
                    isEmailFilled = true;
                  } else {
                    isEmailFilled = false;
                  }
                });
              },
              keyboardType: TextInputType.emailAddress,
              validator: _emailValidator.call,
              prefixIcon: Icons.email,
            ),
            CustomTextField(
              obscureText: true,
              hintText: LocaleKeys.Auth_password.tr(),
              onChanged: (value) {
                password = value;
                setState(() {
                  if (value != '') {
                    isPasswordFilled = true;
                  } else {
                    isPasswordFilled = false;
                  }
                });
              },
              keyboardType: TextInputType.text,
              validator: _passwordValidator.call,
              prefixIcon: Icons.lock,
            ),
            const SizedBox(
              height: 10,
            ),
            RememberMeCheckBox(
              onChange: (value) {
                rememberMe = value!;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  widget.onTap.call(email, password, rememberMe);
                }
              },
              title: widget.buttonTitle,
              isEnabled: isEmailFilled && isPasswordFilled,
            ),
          ],
        ));
  }
}
