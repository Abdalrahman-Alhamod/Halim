import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
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
            context.isDarkMode
                ? AppColors.darkColor
                : Colors.white,
        title: Text(
          LocaleKeys.CreatePin_enter_pin.tr(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: context.isDarkMode
                ? Colors.white
                : Colors.black,
          ),
        ),
        elevation: 0,
        //  toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
          GoRouter.of(context).pop();
          },
        ),
      ),
      backgroundColor:
          context.isDarkMode
              ? AppColors.darkColor
              : Colors.white,
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
          LocaleKeys.CreatePin_add_a_pin.tr(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color:
                    context.isDarkMode
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
