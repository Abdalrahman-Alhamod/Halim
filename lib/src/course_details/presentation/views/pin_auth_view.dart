import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/functions/show_custom_dialog.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import 'widgets/enroll_course_view/widgets/enroll_success_dialog.dart';

class PINAuthDialog extends StatefulWidget {
  const PINAuthDialog({super.key, required this.parentContext});
  final BuildContext parentContext;
  @override
  State<PINAuthDialog> createState() => _PINAuthDialogState();
}

class _PINAuthDialogState extends State<PINAuthDialog> {
  final List<TextEditingController> _pinControllers =
      List.generate(4, (_) => TextEditingController());

  void _handlePinChange(int index, String value) {
    if (value.length == 1 && index < 3) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: 350,
      height: context.height * 0.35,
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            LocaleKeys.CourseDetails_Enroll_enterYourPINtoVerify.tr(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 4,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 55,
                      height: 55,
                      child: TextField(
                        cursorColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.dark
                                ? AppColors.lightFlatButtonColor
                                : AppColors.darkFlatButtonColor,
                        style: TextStyle(
                          fontSize: screenSize.height * 0.019,
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark
                              ? AppColors.lightFlatButtonColor
                              : AppColors.darkFlatButtonColor,
                        ),
                        controller: _pinControllers[index],
                        obscureText: true,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          _handlePinChange(index, value);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // focusColor: Colors.red,
                          // hoverColor: Colors.red,
                          counterText: '',
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 0.5,
                              style: BorderStyle.none,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor:
                              MediaQuery.of(context).platformBrightness ==
                                      Brightness.dark
                                  ? AppColors.darkFlatButtonColor
                                  : AppColors.lightFlatButtonColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          CustomFlatButton(
            onPressed: () {
              if (_pinControllers[3].text != '') {
                Navigator.pop(context);
                showCustomDialog(
                  context: widget.parentContext,
                  widget: const EnrollSuccessDialog(),
                );
              }
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
    );
  }
}
