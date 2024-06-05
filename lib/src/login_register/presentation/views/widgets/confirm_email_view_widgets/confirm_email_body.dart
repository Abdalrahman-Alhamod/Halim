part of '../../confirm_email_view.dart';

class _ConfirmEmailBody extends StatefulWidget {
  const _ConfirmEmailBody();

  @override
  State<_ConfirmEmailBody> createState() => _ConfirmEmailBodyState();
}

class _ConfirmEmailBodyState extends State<_ConfirmEmailBody> {
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
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        Text(
          LocaleKeys.Auth_enterYourEmailConfimCode.tr(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
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
                      controller: _pinControllers[index],
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        _handlePinChange(index, value);
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counterText: '',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
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
                        fillColor: MediaQuery.of(context).platformBrightness ==
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
          flex: 8,
        ),
        CustomFlatButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kFillProfile);
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
    );
  }
}
