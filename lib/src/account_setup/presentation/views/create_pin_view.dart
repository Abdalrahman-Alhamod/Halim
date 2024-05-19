import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';

class CreatePinView extends StatefulWidget {
  const CreatePinView({super.key});

  @override
  CreatePinViewState createState() => CreatePinViewState();
}

class CreatePinViewState extends State<CreatePinView> {
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.darkColor
                : Colors.white,
        title: Text(
          'Create New PIN',
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
        //  toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kFillProfile);
          },
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkColor
              : Colors.white,
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Text('Add a PIN number to make Your account more secure.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.normal,
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              )),
          const Spacer(
            flex: 4,
          ),
          Center(
            child: Row(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
          ),
          const Spacer(
            flex: 8,
          ),
          CustomFlatButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kBiomatric);
            },
            title: 'Continue',
            width: MediaQuery.of(context).size.width * 0.94,
            height: 60,
            kTextcolor: AppColors.lightFlatButtonColor,
            kBackgroundcolor: AppColors.primaryColor,
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
