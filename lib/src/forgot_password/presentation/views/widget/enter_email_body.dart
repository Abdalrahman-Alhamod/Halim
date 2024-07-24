import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/assets/app_images.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../../../auth/presentation/views/widgets/shared_widgets/custom_text_field.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/app_route.dart';

class EnterEmailBody extends StatefulWidget {
  const EnterEmailBody({super.key});

  @override
  EnterEmailBodyState createState() => EnterEmailBodyState();
}

class EnterEmailBodyState extends State<EnterEmailBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  final _emailValidator = MultiValidator([
    RequiredValidator(errorText: LocaleKeys.Auth_thisFieldIsRequired.tr()),
    EmailValidator(errorText: LocaleKeys.Auth_enterValidEmail.tr()),
  ]);
  bool isEmailValid = false;
  String email = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: context.height - 100,
        child: Form(
          key: formKey,
          onChanged: () {
            setState(() {
              isEmailValid = formKey.currentState?.validate() ?? false;
            });
          },
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
              Text(
                LocaleKeys.ForgotPassword_EnterEm_EnterThe.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              CustomTextField(
                obscureText: false,
                hintText: LocaleKeys.Auth_email.tr(),
                onChanged: (value) {
                  email = value;
                  setState(() {
                    isEmailValid = formKey.currentState?.validate() ?? false;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                validator: _emailValidator.call,
                prefixIcon: Icons.email,
              ),
              const Spacer(
                flex: 2,
              ),
              CustomFlatButton(
                isEnabled: isEmailValid,
                onPressed: () {
                  isEmailValid
                      ? GoRouter.of(context).go(AppRoute.kEnterCode)
                      : null;
                },
                title: LocaleKeys.FillYourProfile_continue.tr(),
                width: context.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
