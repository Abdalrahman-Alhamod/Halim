import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/widgets/custome_flat_button.dart';
import 'pin_text_field.dart';

class PINAuthDialog extends StatefulWidget {
  const PINAuthDialog({super.key, required this.onSuccess});
  final void Function() onSuccess;
  @override
  State<PINAuthDialog> createState() => _PINAuthDialogState();
}

class _PINAuthDialogState extends State<PINAuthDialog> {
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
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: context.height * 0.35,
        maxWidth: 350,
      ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) {
                return Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: PinTextField(
                      onChanged: (value) {
                        _handlePinChange(index, value);
                      },
                      controller: _pinControllers[index],
                      obsecureText: true,
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          CustomFlatButton(
            onPressed: () {
              if (_pinControllers[3].text != '') {
                context.pop();
                widget.onSuccess.call();
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
