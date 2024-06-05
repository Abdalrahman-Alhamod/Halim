import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';

class EnterCodeBody extends StatefulWidget {
  const EnterCodeBody();

  @override
  _EnterCodeBodyState createState() => _EnterCodeBodyState();
}

class _EnterCodeBodyState extends State<EnterCodeBody> {
  final List<TextEditingController> _codeControllers =
      List.generate(4, (_) => TextEditingController());

  void _handleCodeChange(int index, String value) {
    if (value.length == 1 && index < 3) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Code has been sent to +1 111 *** **9',
              style: TextStyle(
                fontSize: 16,
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 60,
                  child: TextField(
                    cursorColor: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? AppColors.lightFlatButtonColor
                        : AppColors.darkFlatButtonColor,
                    style: TextStyle(
                      fontSize: context.height * 0.019,
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? AppColors.lightFlatButtonColor
                          : AppColors.darkFlatButtonColor,
                    ),
                    controller: _codeControllers[index],
                    obscureText: true,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      _handleCodeChange(index, value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      fillColor: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? AppColors.darkFlatButtonColor
                          : AppColors.lightFlatButtonColor,
                    ),
                  ),
                ),
              );
            }),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Resend code in 55 s',
              style: TextStyle(
                fontSize: 16,
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
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
              title: 'Verify',
              width: MediaQuery.of(context).size.width * 0.94,
              height: 60,
              kTextcolor: AppColors.lightFlatButtonColor,
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      );
  }
}
