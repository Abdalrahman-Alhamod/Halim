import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/choose_your_specialty.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/list_with_education_level.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:provider/provider.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../manager/account_setup_cubit/account_setup_cubit.dart';
import 'services/image_services.dart';
import 'widgets/birthday_card.dart';
import 'widgets/list_with_dialog_gender.dart';
import 'widgets/phone_num_input.dart';
import '../../../auth/presentation/views/widgets/shared_widgets/custom_text_field.dart';

class FillProfileBody extends StatefulWidget {
  const FillProfileBody({super.key});

  @override
  FillProfileBodyState createState() => FillProfileBodyState();
}

class FillProfileBodyState extends State<FillProfileBody> {
  final StudentInfomationsModel studentInfModel = StudentInfomationsModel();
  late ImageServices _imageServices;
  String? get imageFile => _imageServices.imageFile;
  late dynamic searchCubit;

  bool isFullNameFilled = false;
  bool isLastNameFilled = false;
  bool isBirthDateFilled = false;
  bool isPhoneNumberFilled = false;
  bool isGenderSelected = false;
  bool isCategorySelected = false;

  bool get isFormValid =>
      isFullNameFilled &&
      isLastNameFilled &&
      isBirthDateFilled &&
      isPhoneNumberFilled &&
      isGenderSelected &&
      isCategorySelected;
  bool showSpecialtyRegister = false;

  void _checkFormValidity() {
    setState(() {});
  }

  void onOptionSelected(String option) {
    if (option == LocaleKeys.FillYourProfile_EducationLevel_bachelor.tr() ||
        option == LocaleKeys.FillYourProfile_EducationLevel_master.tr() ||
        option == LocaleKeys.FillYourProfile_EducationLevel_diploma.tr()) {
      setState(() {
        showSpecialtyRegister = true;
        isCategorySelected = false;
      });
    } else {
      setState(() {
        showSpecialtyRegister = false;
        isCategorySelected = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _imageServices = ImageServices(this, _onImageSelected);
    searchCubit = context.read<SearchCubit>();
    searchCubit.getCategories();
  }

  void _onImageSelected(String? image) {
    setState(() {
      studentInfModel.image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 10),
        Container(
          width: 200,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: _imageServices.imageFile != null
                  ? FileImage(File(_imageServices.imageFile!))
                  : const AssetImage(AppImages.emptyAvatar) as ImageProvider,
              fit: BoxFit.contain,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 125),
            alignment: Alignment.bottomCenter,
            child: IconButton(
              icon: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Icon(size: 25, Icons.edit, color: Colors.white)),
              onPressed: () {
                _imageServices.showOptionImage(context);
              },
            ),
          ),
        ),
        Container(height: 20),
        CustomTextField(
          hintText: LocaleKeys.FillYourProfile_fullName.tr(),
          onChanged: (value) {
            studentInfModel.firstName = value;
            isFullNameFilled = value.isNotEmpty;
            _checkFormValidity();
          },
        ),
        CustomTextField(
          hintText: LocaleKeys.FillYourProfile_lastName.tr(),
          onChanged: (value) {
            studentInfModel.lastName = value;
            isLastNameFilled = value.isNotEmpty;
            _checkFormValidity();
          },
        ),
        BirthdayCard(
          onChanged: (date) {
            setState(() {
              studentInfModel.birthDate = date;
              isBirthDateFilled = date.isNotEmpty;
              _checkFormValidity();
            });
          },
        ),
        PhoneNumberInputScreen(
          onPhoneNumberChanged: (number) {
            studentInfModel.phoneNumber = number;
            isPhoneNumberFilled = number.isNotEmpty;
            _checkFormValidity();
          },
        ),
        ListWithDialogGender(
          onGenderSelected: (gender) {
            studentInfModel.gender = gender.toLowerCase();
            isGenderSelected = gender.isNotEmpty;
            _checkFormValidity();
          },
        ),
        ListWithEducationLevel(onOptionSelected: (option) {
          if (option ==
                  LocaleKeys.FillYourProfile_EducationLevel_bachelor.tr() ||
              option == LocaleKeys.FillYourProfile_EducationLevel_master.tr() ||
              option ==
                  LocaleKeys.FillYourProfile_EducationLevel_diploma.tr()) {
            setState(() {
              showSpecialtyRegister = true;
              isCategorySelected = false;
              studentInfModel.educationLevel = option;
            });
          } else {
            setState(() {
              showSpecialtyRegister = false;
              isCategorySelected = true;
              studentInfModel.educationLevel = option;
            });
          }
        }),
        if (showSpecialtyRegister)
          ChooseYourSpecialtyWithRegister(
            onSpecialtySelected: (specialty) {
              studentInfModel.major = Major(name: specialty.name ?? '');

              isCategorySelected = specialty.name?.isNotEmpty ?? false;
              _checkFormValidity();
            },
          ),
        Container(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomFlatButton(
            isEnabled: isFormValid,
            onPressed: () {
              if (isFormValid) {
                GoRouter.of(context).push(AppRoute.kCreatePin);
                studentInfModel.id = 1068;

                context.read<AccountSetupCubit>().student = studentInfModel;
              }
            },
            title: LocaleKeys.FillYourProfile_continue.tr(),
            width: MediaQuery.of(context).size.width * 0.94,
            height: 60,
            kTextcolor: AppColors.lightFlatButtonColor,
          ),
        ),
        Container(height: 20),
      ],
    );
  }
}
