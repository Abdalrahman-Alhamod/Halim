import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/widgets/pin_auth_dialog.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/functions/authenticate.dart';
import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/constants/app_constrains.dart';
import '../../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../../core/themes/app_colors.dart';
part './authentication_method_button.dart';

class AuthenticateUsingDialog extends StatelessWidget {
  const AuthenticateUsingDialog({
    super.key,
    required this.message,
    required this.onSuccess,
  });
  final String message;
  final void Function() onSuccess;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: context.height * 0.6,
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          SizedBox(
            width: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AppImages.iconPublic,
                  scale: 1.1,
                ),
                Icon(
                  Icons.lock,
                  size: 64,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                _AuthenticationMethodButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showCustomDialog(
                      context: context,
                      widget: PINAuthDialog(
                        onSuccess: onSuccess,
                      ),
                    );
                  },
                  label: LocaleKeys.CourseDetails_Enroll_pin.tr(),
                  icon: Icons.pin,
                ),
                const SizedBox(
                  height: 14,
                ),
                _AuthenticationMethodButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    bool authenticated = await authenticate();
                    if (authenticated) {
                      onSuccess.call();
                    }
                  },
                  label: LocaleKeys.CourseDetails_Enroll_biometrics.tr(),
                  icon: Icons.fingerprint,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
