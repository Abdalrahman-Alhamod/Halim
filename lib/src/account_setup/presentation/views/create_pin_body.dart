import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/functions/show_custom_dialog.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';

import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import '../../../course_details/presentation/views/widgets/enroll_course_view/widgets/pin_text_field.dart';

class CreatePinBody extends StatefulWidget {
  const CreatePinBody({super.key});

  @override
  CreatePinBodyState createState() => CreatePinBodyState();
}

class CreatePinBodyState extends State<CreatePinBody> {
  late final List<TextEditingController> _pinControllers;

  @override
  void initState() {
    _pinControllers = List.generate(4, (_) => TextEditingController());
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in _pinControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _handlePinChange(int index, String value) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              Text(LocaleKeys.CreatePin_add_a_pin.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: context.isDarkMode ? Colors.white : Colors.black,
                  )),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox.square(
                      dimension: 60,
                      child: PinTextField(
                        onChanged: (value) {
                          _handlePinChange(index, value);
                        },
                        controller: _pinControllers[index],
                        obsecureText: true,
                      ),
                    ),
                  );
                }),
              ),
              const Spacer(
                flex: 8,
              ),
              CustomFlatButton(
                onPressed: () {
                  showCustomDialog(
                      context: context,
                      widget: AccontSucssesDialog(
                        () {
                          GoRouter.of(context).push(AppRoute.kHome);
                        },
                      ));
                },
                title: LocaleKeys.FillYourProfile_continue.tr(),
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
                kBackgroundcolor: AppColors.primaryColor,
              ),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
