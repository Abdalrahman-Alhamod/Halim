import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/birthday_card.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/choose_your_specialty.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/list_with_education_level.dart';
import 'package:halim/src/home/data/models/student_profile_model.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:halim/src/profile_settings/presentation/manager/cubit/profile_settings_cubit.dart';
import 'package:halim/src/profile_settings/presentation/views/functions/show_choose_interests_bottom_sheet_with_edit.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:provider/provider.dart';
import '../../../../../core/assets/app_images.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../account_setup/presentation/manager/account_setup_cubit/account_setup_cubit.dart';
import '../../../../account_setup/presentation/views/widgets/list_with_dialog_gender.dart';
import '../../../../account_setup/presentation/views/widgets/phone_num_input.dart';
import '../../../../auth/presentation/views/widgets/shared_widgets/custom_text_field.dart';

class EditProfileBody extends StatefulWidget {
  const EditProfileBody({super.key});

  @override
  EditProfileBodyState createState() => EditProfileBodyState();
}

class EditProfileBodyState extends State<EditProfileBody> {
  late ImageServices _imageServices;
  String? get imageFile => _imageServices.imageFile;
  late dynamic searchCubit;
  late final StudentInfomationsModel studentInfModel;
  bool showSpecialtyRegister = false;

  void onOptionSelected(String option) {
    if (option == LocaleKeys.FillYourProfile_EducationLevel_bachelor.tr() ||
        option == LocaleKeys.FillYourProfile_EducationLevel_master.tr() ||
        option == LocaleKeys.FillYourProfile_EducationLevel_diploma.tr()) {
      setState(() {
        showSpecialtyRegister = true;
      });
    } else {
      setState(() {
        showSpecialtyRegister = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<SearchCubit>().getSubcategories();

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
    studentInfModel = context.read<AccountSetupCubit>().student;

    StudentProfileModel studentget =
        context.read<HomeCubit>().studentProfileModel ?? StudentProfileModel();
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
          hintText: studentget.firstName ?? '',
          onChanged: (value) {
            studentInfModel.firstName = value;
          },
        ),
        CustomTextField(
          hintText: studentget.lastName ?? '',
          onChanged: (value) {
            studentInfModel.lastName = value;
          },
        ),
        BirthdayCard(
          hintText: studentget.birthDate.toString().substring(0, 10),
          onChanged: (date) {
            setState(() {
              studentInfModel.birthDate = date;
            });
          },
        ),
        PhoneNumberInputScreen(
          hintText: studentget.phoneNumber ?? '',
          onPhoneNumberChanged: (number) {
            studentInfModel.phoneNumber = number;
          },
        ),
        ListWithDialogGender(
          hintText: studentget.gender ?? "",
          onGenderSelected: (gender) {
            studentInfModel.gender = gender.toLowerCase();
          },
        ),
        ListWithEducationLevel(
            hintText: studentget.educationLevel ?? '',
            onOptionSelected: (option) {
              if (option ==
                      LocaleKeys.FillYourProfile_EducationLevel_bachelor.tr() ||
                  option ==
                      LocaleKeys.FillYourProfile_EducationLevel_master.tr() ||
                  option ==
                      LocaleKeys.FillYourProfile_EducationLevel_diploma.tr()) {
                setState(() {
                  showSpecialtyRegister = true;

                  studentInfModel.educationLevel = option;
                });
              } else {
                setState(() {
                  showSpecialtyRegister = false;

                  studentInfModel.educationLevel = option;
                });
              }
            }),
        if (showSpecialtyRegister)
          ChooseYourSpecialtyWithRegister(
            hintText: studentget.major?.name ?? '',
            onSpecialtySelected: (specialty) {
              studentInfModel.major = Major(name: specialty.name ?? '');
            },
          ),
        Container(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomFlatButton(
            isEnabled: true,
            onPressed: () {
           
              // GoRouter.of(context).push(AppRoute.kCreatePin);
              studentInfModel.id = 1071;

              context.read<ProfileSettingsCubit>().upStudent = studentInfModel;

              context.read<SearchCubit>().subcategories.removeWhere(
                    (category) => category.id == -1,
                  );

              ChooseInterestsBottomSheetWhithEdit
                  .chooseInterestsBottomSheetWith(
                      context, context.read<SearchCubit>().subcategories);
            },
            title: LocaleKeys.FillYourProfile_continue.tr(),
            width: MediaQuery.of(context).size.width * 0.94,
            height: 60,
            kTextcolor: AppColors.lightFlatButtonColor,
          ),
        ),
        Container(height: 30),
      ],
    );
  }
}
