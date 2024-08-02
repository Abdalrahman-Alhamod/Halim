import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/account_setup/presentation/views/functions/show_choose_interests_bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../manager/account_setup_cubit/account_setup_cubit.dart';
import 'services/image_services.dart';
import 'widgets/birthday_card.dart';
import 'widgets/choose_your_specialty.dart';
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

  @override
  void initState() {
    super.initState();
    _imageServices = ImageServices(this, _onImageSelected);
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
          },
        ),
        CustomTextField(
          hintText: LocaleKeys.FillYourProfile_lastName.tr(),
          onChanged: (value) {
            studentInfModel.lastName = value;
          },
        ),
        BirthdayCard(
          onChanged: (date) {
            setState(() {
              studentInfModel.birthDate = date;
            });
          },
        ),
        PhoneNumberInputScreen(
          onPhoneNumberChanged: (number) {
            studentInfModel.phoneNumber = number;
          },
        ),
        ListWithDialogGender(
          onGenderSelected: (gender) {
            studentInfModel.gender = gender.toLowerCase();
          },
        ),
        ChooseYourSpecialtyWithRegister(
          onSpecialtySelected: (specialty) {
            studentInfModel.educationLevel = specialty;
          },
        ),
        Container(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomFlatButton(
            isEnabled: true,
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kCreatePin);

              chooseInterestsBottomSheet(context);
              // if(_valid){
              studentInfModel.id = 1061;
              context.read<AccountSetupCubit>().student = studentInfModel;
              // }
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
