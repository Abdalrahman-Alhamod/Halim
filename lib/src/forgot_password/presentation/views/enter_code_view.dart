import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';

class EnterCodeView extends StatefulWidget {
  const EnterCodeView({super.key});

  @override
  State<EnterCodeView> createState() => _EnterCodeViewState();
}

class _EnterCodeViewState extends State<EnterCodeView> {
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
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.darkColor
                : Colors.white,
        title: Text(
          'Enter Code',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kSendCode);
          },
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkColor
              : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
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
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
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
                        fontSize: screenSize.height * 0.019,
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
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            CustomFlatButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kNewPass);
              },
              title: 'Verify',
              width: MediaQuery.of(context).size.width * 0.94,
              height: 60,
              kTextcolor: AppColors.lightFlatButtonColor,
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
