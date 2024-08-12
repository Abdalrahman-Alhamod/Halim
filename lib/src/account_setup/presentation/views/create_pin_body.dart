import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/account_setup/presentation/manager/account_setup_cubit/account_setup_cubit.dart';
import 'package:halim/src/account_setup/presentation/views/functions/show_choose_interests_bottom_sheet.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/context_extensions.dart';
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
  late dynamic searchCubit;
  @override
  void initState() {
    _pinControllers = List.generate(4, (_) => TextEditingController());
    searchCubit = context.read<SearchCubit>();
    searchCubit.getSubcategories();

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

  int _getPinCode() {
    String pin = _pinControllers.map((controller) => controller.text).join();
    return int.parse(pin);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountSetupCubit, AccountSetupState>(
      listenWhen: context.read<AccountSetupCubit>().listenWhen,
      listener: context.read<AccountSetupCubit>().listen,
      child: SingleChildScrollView(
        child: SizedBox(
          height: context.height - 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                Text(
                  LocaleKeys.CreatePin_add_a_pin.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: context.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const Spacer(flex: 2),
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
                          obsecureText: false,
                        ),
                      ),
                    );
                  }),
                ),
                const Spacer(flex: 8),
                CustomFlatButton(
                  onPressed: () {
                    int pinCode = _getPinCode();
                    context.read<AccountSetupCubit>().student.pin = pinCode;
                    ChooseInterestsBottomSheet.chooseInterestsBottomSheet(
                        context, searchCubit.subcategories);
                  },
                  title: LocaleKeys.FillYourProfile_continue.tr(),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 60,
                  kTextcolor: AppColors.lightFlatButtonColor,
                  kBackgroundcolor: AppColors.primaryColor,
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
