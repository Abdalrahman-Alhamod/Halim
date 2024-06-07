part of '../../confirm_email_view.dart';

class _ConfirmEmailBody extends StatefulWidget {
  const _ConfirmEmailBody();

  @override
  State<_ConfirmEmailBody> createState() => _ConfirmEmailBodyState();
}

class _ConfirmEmailBodyState extends State<_ConfirmEmailBody> {
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
        child: SizedBox(
          height: context.height - 100,
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppImages.iconPublic,
                    width: context.width * .7,
                  ),
                  Icon(
                    Icons.mark_email_unread,
                    size: 100,
                    color: Colors.white,
                  ),
                ],
              ),
              const Spacer(
                flex: 3,
              ),
              Text(
                LocaleKeys.Auth_enterYourEmailConfimCode.tr(),
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
          ),
        ),
      ),
    );
  }
}
