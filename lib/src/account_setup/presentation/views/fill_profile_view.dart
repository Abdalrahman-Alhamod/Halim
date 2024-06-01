import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/functions/choose_Interests_Bottom_Sheet.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/BirthdayCard.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ChooseYourSpecialty.dart';

import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import '../../../login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';

import 'widgets/ListWithDialogGender.dart';
import 'widgets/phoneNum_input.dart';

class FillProfilView extends StatefulWidget {
  const FillProfilView({super.key});

  @override
  State<FillProfilView> createState() => _FillProfilViewState();
}

class _FillProfilViewState extends State<FillProfilView> {
  String fullName = '';
  String lastName = '';
  String dateBirth = '';
  String gender = '';
  String phoneNumber = '';
  // ignore: unused_field
  final List<String> _options = ['male', 'female'];
  // ignore: unused_field
  String? _selectedOption;

  late ImageServices _imageServices;

  File? get imageFile => _imageServices.imageFile;

  @override
  void initState() {
    super.initState();
    _imageServices = ImageServices(this, refresh);
  }

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text(
          LocaleKeys.FillYourProfile_fillYourProfile.tr(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        elevation: 0,
        //  toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
          },
        ),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 10),
            Container(
              width: 200,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageFile != null
                      ? FileImage(imageFile!)
                      : const AssetImage(AppImages.emptyAvatar)
                          as ImageProvider,
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
                      child: const Icon(
                          size: 25, Icons.edit, color: Colors.white)),
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
                fullName = value;
              },
            ),
            CustomTextField(
              hintText: LocaleKeys.FillYourProfile_lastName.tr(),
              onChanged: (value) {
                lastName = value;
              },
            ),
            BirthdayCard(),
            const PhoneNumberInputScreen(),
            ListWithDialogGender(),
            ChooseYourSpecialtyWithRegister(),
            Container(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomFlatButton(
                onPressed: () {
                 chooseInterestsBottomSheet(context);
              
                },
                title: LocaleKeys.FillYourProfile_continue.tr(),
                width: MediaQuery.of(context).size.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
            ),
            Container(height: 20),
          ],
        ),
      ),
    );
  }
}
