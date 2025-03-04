import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import '../../../../course_details/presentation/views/widgets/enroll_course_view/widgets/pin_text_field.dart';

class EnterCodeBody extends StatefulWidget {
  const EnterCodeBody({super.key});

  @override
  EnterCodeBodyState createState() => EnterCodeBodyState();
}

class EnterCodeBodyState extends State<EnterCodeBody> {
  late final List<TextEditingController> _codeControllers;

  @override
  void initState() {
    _codeControllers = List.generate(4, (_) => TextEditingController());
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in _codeControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _handleCodeChange(int index, String value) {
    if (value.length == 1 && index < 3) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: context.height - 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '${LocaleKeys.ForgotPassword_codeHas.tr()} +1 111 *** **9',
                  style: TextStyle(
                    fontSize: 16,
                    color: context.isDarkMode ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox.square(
                        dimension: 60,
                        child: PinTextField(
                          onChanged: (value) {
                            _handleCodeChange(index, value);
                          },
                          controller: _codeControllers[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '${LocaleKeys.ForgotPassword_resend.tr()} 55 ${LocaleKeys.ForgotPassword_second.tr()}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(
                flex: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CustomFlatButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoute.kNewPass);
                  },
                  title: LocaleKeys.ForgotPassword_verify.tr(),
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: 60,
                  kTextcolor: AppColors.lightFlatButtonColor,
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
